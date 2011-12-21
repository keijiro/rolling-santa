import UnityEngine

class Generator(MonoBehaviour):
    public _giftPrefab as GameObject

    def Start() as IEnumerator:
        while true:
            Instantiate(_giftPrefab, Vector3(Random.Range(-4.0f, 4.0f), 1.5, 0), Quaternion.AngleAxis(Random.Range(-15.0f, 15.0f), Vector3.forward))
            yield WaitForSeconds(2.0)
