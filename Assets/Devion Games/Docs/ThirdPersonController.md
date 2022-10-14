# ThirdPersonController


## Contains:
* Refs for

## What is it?
* A CallbackHandler for

## Significant dependant objects

## Analysis

### class ThirdPersonController
* Extends MonoBehaviour
* Fields
  * DontDestroyOnLoad(bool) defaults to true
  *	ForwardInput("Vertical") & HorizontalInput("Horizontal") & AimInput("Fire2")
  * SpeedMultiplier defaults to 1f
  * AimType defaults to Button | Selectable
  * AimRotation defaults to 20f;
  * RotationSpeed defaults to 10f;
  * AirSpeed defaults to new Vector3 (0.3f, 0f, 0.3f);
  * AirDampening defaults to 0.15f;
  * GroundDampening defaults to 0f;
  * StepOffset defaults to 0.2f;
  * SlopeLimit defaults to 45f;
  * GroundLayer(LayerMask) defaults to 1 << 0!
  * SkinWidth defaults to 0.08f;
  * PhysicMaterial: IdleFriction, MovementFriction, StepFriction & AirFriction - set in Editor
  * AudioMixerGroup defaults to null
  * FootstepClips defaults to empty List of AudioClip
  * UseChildAnimator defaults to false
  * ForwardDampTime defaults to 0.15f;
  * HorizontalDampTime defaults to 0.15f;
  * Motions(List of MotionState) - significant!
  * ToggleState(Dictionary<MotionState, bool>) set at Awake() to false for every Motion
  * Animator set at Awake() GetComponent<Animator>()
    * overwritten at Awake() by details in first ChildAnimator if UseChildAnimator is set
  * Rigidbody set at Awake() GetComponent<Rigidbody>()
  * CapsuleCollider set at Awake() GetComponent<CapsuleCollider>()
  * CameraTransform set at Awake() to Camera.main.transform
  * Transform set at Awake() our transform;
  * IsGrounded defaults to false
    * if set to new state calls ExecuteEvent<IControllerGrounded>(Execute, IsGrounded)?
  * RawInput(Vector3) - used by Input Manager
  * IsAiming
    * if set to new state calls ExecuteEvent<IControllerAim>(Execute, IsAiming)?
  * IsMoving
  * RelativeInput(Vector3) - if isAiming, RawInput else a wierd calculation!
  * Velocity(Vector3)
  * LookRotation(Quaternion)
  * MouseInput?
  * AirVelocity(Vector3)
  * PrevAirVelocity(Vector3)
  * RootMotionForce(Vector3)
  * GroundHit(RaycastHit)
  * CharacterIK set at Awake() GetComponent<CharacterIK>()
  * AimPosition(Vector3)
  * Stepping
  * Slope
  * LayerStateMap(AnimatorStateInfo[]) size set as Awake to Animator.layerCount and contains state info from Animator
  * MotionStateMap(Dictionary of int to MotionState[]) set at Awake from LayerStatemap and Motions
  * ControllerActive defaults to true
  * GUIClick
  * ControllerEvents(IControllerEventHandler[]) set at Awake() from GetComponentsInChildren<IControllerEventHandler>(true)
  * delegate(void EventFunction<T>(T handler, object arg))
  * AudioSource


* Methods
  * Awake
    * if DontDestroyOnLoad, DontDestroyOnLoad(our gameObject)
    * set other static fields and tables
  * OnEnable & OnDisable - SetControllerActive(true / false);
  * Execute(handler, object):
    * IControllerGrounded - handler.OnControllerGrounded(grounded)
    * IControllerAim - handler.OnControllerAim(aim)
  * ExecuteEvent<T>(EventFunction<T>, object, includeDisabled default false) where T : IControllerEventHandler
    * for all ControllerEvents
      if ShouldSendEvent<T>(handler, includeDisabled), EventFunction<T>.Invoke(EventFunction<T>, object)
  * ShouldSendEvent<T>(IControllerEventHandler handler, bool includeDisabled)
  * Update only if ControllerActive
    * Polls Input Manager
    * If UnityTools.IsPointerOverUI, GUIClick set to Iput any mouse button up(true) or down(false) 
    * set RawInput from Input.GetAxis(HorizontalInput, 0, ForwardInput)
    * if not GUIClick and AimType is Button, set IsAiming from Input.GetButton(AimInput)
    * if not yet set, but AimType is Axis, if Input.GetAxis(AimInput) != 0, set IsAiming and RawInoput.x from it
    * if not yet set, but AimType is Toggle, toggle IsAiming if Input.GetButtonDown(AimInput)
    * if not yet set, but AimType is Select, IsAiming iff have SelectableObject.current
    * for each MotionState in Motions
      * if active and not consumed GUIClick
        * use MotionState's StartType, StopType, InputName and Input.GetButton<Up/Down>(InputName) to
          * TryStartMotion or TryStopMotion and adjust ToggleState and it's IsActive state
  * FixedUpdate only if ControllerActive
    * for each MotionState in Motions
      * if active and enabled
        * use ToggleState & MotionState's StartType, StopType (if Automatic) to
          * TryStartMotion or TryStopMotion
    * set LookRotation from Transform.eulerAngles(x & z) and CameraTransform.eulerAngles(y)
    * set Velocity from Rigidbody.velocity overridden by:
      * if IsGrounded, RootMotionForce(x, z) += Transform.TransformDirection(RelativeInput * Animator.Get("Force"))
    * call CheckGround()
    * call CheckStep()
    * call UpdateVelocity()
    * call UpdateFrictionMaterial()
    * call UpdateRotation()
    * call UpdateAnimator()
    * set Rigidbody.velocity from final Velocity;

And lots more...
