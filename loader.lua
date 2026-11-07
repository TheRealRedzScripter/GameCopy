local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/UniversalSynSaveInstance/main/",
    SSI = "saveinstance",
}
local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

local Options = {
    mode = "full",
    SafeMode = false,                    -- pas de déconnexion : l'interface reste en place
    KillAllScripts = false,
    Decompile = true,
    SaveBytecode = true,
    NilInstances = true,
    IsolatePlayers = true,
    IsolateLocalPlayer = true,           -- capture PlayerGui et donc l'interface
    IsolateLocalPlayerCharacter = true,
    SavePlayerCharacters = true,
    DecompileTimeout = 20,
    SharedBinaryStrings = true,
    FilePath = "TankGame_full.rbxl",
}

synsaveinstance(Options)
