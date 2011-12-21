import UnityEngine
import System.Collections

class GiftBox (MonoBehaviour):
    public _toysPrefab as GameObject
    public _jimmyPrefab as GameObject

    def OnCollisionExit(collision as Collision) as IEnumerator:
        if collision.gameObject.tag == "Player":
            yield WaitForSeconds(0.5)
            prefab = Random.value < 0.3 and _jimmyPrefab or _toysPrefab
            Instantiate(prefab, transform.position, transform.rotation)
            Destroy(gameObject)
