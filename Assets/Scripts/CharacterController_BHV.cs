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

    public float yellTimer = 40f;
    private float yellCounter;

    public LayerMask floorMask; //Mask: Floor
    public Rigidbody2D rigidbodyRef;

    void Start () {
        curSpeed = 0;
        stepTimer = 0;
        yellCounter = yellTimer;
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

        if (Input.GetKeyDown(KeyCode.Space) && Physics2D.OverlapCircle((Vector2) transform.position + new Vector2(0f,-0.5f), 0.2f, floorMask)) {
            Debug.Log("Jump");
            rigidbodyRef.AddForce(transform.up * jumpForce);
        }

        if(yellCounter == yellTimer) {
            if (Input.GetKeyDown(KeyCode.E) && yellCounter == yellTimer) {
                sonar.AddWave(new Wave(stepSpeed*2, stepRange*3, transform.position, stepThickness*2, stepCurve));
                yellCounter = 0f;
            }
        } else {
            yellCounter++;
        }

        /*if (Input.GetKeyDown(KeyCode.S)) {
            gameObject.GetComponent<CircleCollider2D>().
        }*/
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
