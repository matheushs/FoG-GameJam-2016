using UnityEngine;
using System.Collections.Generic;

public class CharacterController_BHV : MonoBehaviour {
    
    public float maxSpeed;
    public float acceleration;
    public float jumpForce;
    public float stepPeriod;

    private float curSpeed;
    private float stepTimer;
    private bool isGrounded;

    public SonarManager_BHV sonar;

    public float stepSpeed;
    public float stepRange;
    public float stepThickness;
    public AnimationCurve stepCurve;

    public LayerMask floorMask; //Mask: Floor
    public Rigidbody2D rigidbodyRef;

    void Start () {
        curSpeed = 0;
        stepTimer = 0;
    }

	void Update () {
        
		if (rigidbodyRef.velocity.x >= maxSpeed) {
			Debug.Log ("Max Speed");
			rigidbodyRef.velocity = new Vector2 (maxSpeed, rigidbodyRef.velocity.y);
		} else {
			rigidbodyRef.AddForce(transform.right * acceleration);
		}
        //transform.position = transform.position + (transform.right * curSpeed * Time.deltaTime);

        stepTimer += Time.deltaTime;
        while (stepTimer >= stepPeriod) {
            Step();
            stepTimer -= stepPeriod;
        }

        if (Input.GetKeyDown(KeyCode.Space)) {
            Debug.Log("Jump");
            rigidbodyRef.AddForce(transform.up * jumpForce);
        }

        if (Input.GetKeyDown(KeyCode.E)) {
            sonar.AddWave(new Wave(stepSpeed*2, stepRange*3, transform.position, stepThickness*2, stepCurve));
        }
	}

    bool IsGrounded() {
        return rigidbodyRef.IsTouchingLayers(floorMask);
    }
    
    void Step() {
        Debug.Log("Step");
        sonar.AddWave(new Wave(stepSpeed, stepRange, transform.position, stepThickness, stepCurve));
    }
    


    void OnCollisionEnter2D(Collision2D coll) {
        
    }

    void OnCollisionExit2D(Collision2D coll) {

    }

}
