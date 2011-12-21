import UnityEngine

class Scorekeeper(MonoBehaviour):
    public _skin as GUISkin

    _score as int

    def AddScore(value as int):
        _score += value

    def OnGUI():
        GUI.skin = _skin
        GUILayout.Label("Current Budget: $$(_score)")
