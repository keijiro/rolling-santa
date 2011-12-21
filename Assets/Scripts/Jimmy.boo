import UnityEngine
import System.Collections

class Jimmy(MonoBehaviour):
    def Start() as IEnumerator:
        yield WaitForSeconds(3.0)
        Destroy(gameObject)

    def OnCollisionExit(collision as Collision) as IEnumerator:
        if collision.gameObject.tag == "Player":
            gameObject.FindWithTag("GameController").SendMessage("AddScore", -10)
            yield WaitForSeconds(0.5)
            Destroy(gameObject)
