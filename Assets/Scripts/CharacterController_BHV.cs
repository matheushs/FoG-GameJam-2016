using UnityEngine;
using System.Collections.Generic;

public class CharacterController_BHV : MonoBehaviour {
    
    public float maxSpeed;
    public float acceleration;
    public float jumpForce;
    public float stepPeriod;

    private float curSpeed;
    private float stepTimer;

    public SonarManager_BHV sonar;

    public float stepSpeed;
    public float stepRange;
    public float stepThickness;
    public AnimationCurve stepCurve;

    public int yellTimer = 40;
    private int yellCounter;

    private bool jumpped;

    public LayerMask floorMask; //Mask: Floor
    public Rigidbody2D rigidbodyRef;
    public Animator animatorRef;

    void Start () {
        curSpeed = 0;
        stepTimer = 0;
        yellCounter = yellTimer;
        jumpped = IsGrounded();
    }

	void Update () {
        
		if (rigidbodyRef.velocity.x >= maxSpeed) {
			Debug.Log ("Max Speed");
			rigidbodyRef.velocity = new Vector2 (maxSpeed, rigidbodyRef.velocity.y);
		} else {
			rigidbodyRef.AddForce(transform.right * acceleration);
		}
        
        stepTimer += Time.deltaTime;
        while (stepTimer >= stepPeriod) {
            Step();
            stepTimer -= stepPeriod;
        }
        if (IsGrounded()) {
            if (Input.GetKeyDown(KeyCode.Space) || Input.GetKeyDown(KeyCode.W)) {//Start Jump
                Debug.Log("Jump");
                rigidbodyRef.AddForce(transform.up * jumpForce);
                animatorRef.SetBool("Jumping", true);
            }
            else if (jumpped) {//Stop Jump
                animatorRef.SetBool("Jumping", false);
            }
            jumpped = false;

            if (Input.GetKeyDown(KeyCode.S)) {//Start Slide
                animatorRef.SetBool("Sliding", true);
            }
            else if (Input.GetKeyUp(KeyCode.S)) {//Stop Slide
                animatorRef.SetBool("Sliding", false);
            }
        }
        else {
            jumpped = true;
        }

        if(yellCounter == yellTimer) {
            if (Input.GetKeyDown(KeyCode.E)) {
                sonar.AddWave(new Wave(stepSpeed*2, stepRange*3, transform.position, stepThickness*2, stepCurve));
                yellCounter = 0;
            }
        } else {
            yellCounter++;
        }


	}

    public bool IsGrounded() {
        return Physics2D.OverlapCircle((Vector2)transform.position + new Vector2(0f, -0.5f), 0.2f, floorMask);
    }
    
    void Step() {
        Debug.Log("Step");
        sonar.AddWave(new Wave(stepSpeed, stepRange, transform.position, stepThickness, stepCurve));
    }
    


    void OnCollisionEnter2D(Collision2D coll) {
        
    }
    
}
