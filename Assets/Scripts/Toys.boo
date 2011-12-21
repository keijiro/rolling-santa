import UnityEngine

class Toys(MonoBehaviour):
    def OnCollisionExit(collision as Collision) as IEnumerator:
        if collision.gameObject.tag == "Player":
            gameObject.FindWithTag("GameController").SendMessage("AddScore", 10)
            yield WaitForSeconds(0.5)
            Destroy(gameObject)
