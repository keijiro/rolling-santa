import UnityEngine

class SantaController(MonoBehaviour):
    public _accel as single

    def FixedUpdate():
        rigidbody.AddForce(Vector3.right * Input.GetAxis("Horizontal") * _accel, ForceMode.Acceleration)

    def OnCollisionExit(collision as Collision):
        if collision.gameObject.tag == "Ground":
            if rigidbody.velocity.y < 5.0:
                rigidbody.AddForce(Vector3.up * 4.0, ForceMode.VelocityChange)
        elif collision.gameObject.tag == "Item":
            rigidbody.AddForce(Vector3.up * 1.2, ForceMode.VelocityChange)
