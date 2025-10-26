-- Layanan yang Diperlukan
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- Pemain Lokal & Pengaturan
local LocalPlayer = Players.LocalPlayer
local DEFAULT_COLOR = Color3.fromRGB(255, 255, 255) -- Warna jika tanpa tim
local MAX_ESP_DISTANCE = 400 -- Jarak maksimal (dalam stud) untuk menampilkan nama

-- Wadah utama untuk semua elemen ESP
local espContainer = Instance.new("ScreenGui")
espContainer.Name = "ESP_Container_Optimized"
espContainer.ResetOnSpawn = false
espContainer.Parent = CoreGui

-- Tabel untuk melacak pemain
local trackedPlayers = {}

-- Fungsi untuk membuat elemen ESP
local function createESPElements(player)
    if trackedPlayers[player] then return end

    -- 1. [BARU] Membuat Highlight untuk seluruh tubuh
    local highlight = Instance.new("Highlight")
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop -- Terlihat menembus tembok
    highlight.FillTransparency = 0.7 -- Transparansi isian warna (0=solid, 1=tidak terlihat)
    highlight.OutlineTransparency = 0.4 -- Transparansi garis luar
    highlight.Enabled = false
    highlight.Parent = espContainer

    -- 2. [DIPERBARUI] Membuat Billboard GUI untuk Nama
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromScale(12, 3) -- UKURAN DINAMIS (akan mengecil dengan jarak)
    billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    billboardGui.MaxDistance = MAX_ESP_DISTANCE -- PENTING: Performa dan Kerapian
    billboardGui.Enabled = false
    billboardGui.Parent = espContainer

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "NameLabel"
    nameLabel.Text = player.DisplayName
    nameLabel.Font = Enum.Font.SourceSansSemibold
    nameLabel.TextSize = 18
    nameLabel.TextColor3 = DEFAULT_COLOR
    nameLabel.BackgroundTransparency = 1 -- Tidak perlu background
    nameLabel.TextStrokeTransparency = 0 -- Garis luar teks agar mudah dibaca
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.Parent = billboardGui

    trackedPlayers[player] = {
        Highlight = highlight,
        Billboard = billboardGui,
        NameLabel = nameLabel
    }
end

-- Fungsi untuk menghapus elemen ESP
local function removeESPElements(player)
    if trackedPlayers[player] then
        trackedPlayers[player].Highlight:Destroy()
        trackedPlayers[player].Billboard:Destroy()
        trackedPlayers[player] = nil
    end
end

-- --- KONEKSI EVENT ---

-- Saat pemain baru masuk
Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        createESPElements(player)
    end
end)

-- Saat pemain keluar
Players.PlayerRemoving:Connect(removeESPElements)

-- Siapkan ESP untuk semua pemain yang sudah ada
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createESPElements(player)
    end
end

-- --- LOOP UTAMA (Anti-Lag) ---
coroutine.wrap(function()
    while true do
        for player, elements in pairs(trackedPlayers) do
            local character = player.Character
            
            if character and character.Parent and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
                local head = character:FindFirstChild("Head")
                if not head then continue end

                local teamColor = player.Team and player.Team.TeamColor.Color or DEFAULT_COLOR

                -- Perbarui Highlight
                elements.Highlight.Adornee = character
                elements.Highlight.FillColor = teamColor
                elements.Highlight.OutlineColor = teamColor
                elements.Highlight.Enabled = true

                -- Perbarui Billboard (Nama)
                elements.Billboard.Adornee = head
                elements.NameLabel.TextColor3 = teamColor
                elements.Billboard.Enabled = true
            else
                -- Sembunyikan jika karakter tidak valid/mati
                elements.Highlight.Enabled = false
                elements.Billboard.Enabled = false
            end
        end
        task.wait() -- [PENTING] Ini adalah kunci performa agar tidak lag
    end
end)()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "ESP Players | By: ItzXery",
    Text = "ESP Players Has Been Activated!",
    Duration = 5
})
