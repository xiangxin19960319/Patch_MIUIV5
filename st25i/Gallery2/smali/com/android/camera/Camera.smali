.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageNamer;,
        Lcom/android/camera/Camera$ImageSaver;,
        Lcom/android/camera/Camera$SaveRequest;,
        Lcom/android/camera/Camera$AutoFocusMoveCallback;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$ZoomChangeListener;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$CameraStartUpThread;
    }
.end annotation


# static fields
.field private static final CAMERA_DISABLED:I = 0xd

.field private static final CAMERA_OPEN_DONE:I = 0xa

.field private static final CHECK_DISPLAY_ROTATION:I = 0x5

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FOCUSING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final OPEN_CAMERA_FAIL:I = 0xc

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SHOW_TAP_TO_FOCUS_TOAST:I = 0x6

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final START_PREVIEW_DONE:I = 0xb

.field private static final SWITCHING_CAMERA:I = 0x4

.field private static final SWITCH_CAMERA:I = 0x8

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "camera"

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_THUMBNAIL:I = 0x7

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCameraDisplayOrientation:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mExposureIndicator:Landroid/widget/TextView;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFirstTimeInitialized:Z

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/android/camera/Camera$ImageNamer;

.field private mImageSaver:Lcom/android/camera/Camera$ImageSaver;

.field private mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mNotSelectableToast:Landroid/widget/Toast;

.field private mOnResumeTime:J

.field private mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneIndicator:Landroid/widget/ImageView;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStorageSpace:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUpdateSet:I

.field private mWhiteBalanceIndicator:Landroid/widget/ImageView;

.field private mZoomControl:Lcom/android/camera/ui/ZoomControl;

.field private mZoomMax:I

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 134
    iput v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 141
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 177
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    .line 185
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    .line 216
    iput v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 217
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 220
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 224
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 225
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 227
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 229
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 231
    new-instance v0, Lcom/android/camera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    .line 233
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 257
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 593
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1326
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchCamera()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 472
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 479
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1788
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 1383
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    .line 1384
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->updateStorageHint(J)V

    .line 1385
    return-void
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1882
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1884
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1885
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1886
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1887
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1888
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1889
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1890
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 1892
    :cond_0
    return-void
.end method

.method private collapseCameraControls()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1309
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return v0

    .line 1313
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v1}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAttach()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1419
    iget-boolean v10, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v10, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1423
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1425
    .local v2, data:[B
    iget-object v10, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 1430
    iget-object v10, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 1431
    const/4 v6, 0x0

    .line 1433
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1434
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1435
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1437
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1438
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v10

    .line 1442
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 1445
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_1
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 1446
    .local v5, orientation:I
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1447
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1448
    new-instance v10, Landroid/content/Intent;

    const-string v11, "inline-data"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v12, v10}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1450
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1454
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_2
    const/4 v9, 0x0

    .line 1455
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1457
    .local v8, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v10, "crop-temp"

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1458
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1459
    const-string v10, "crop-temp"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 1460
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1461
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1462
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 1472
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1475
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1477
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_3
    iget-object v10, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    .line 1480
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1485
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1488
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1490
    const/16 v10, 0x3e8

    invoke-virtual {p0, v1, v10}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1463
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 1464
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1472
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1467
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 1468
    .local v3, ex:Ljava/io/IOException;
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->setResultEx(I)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1472
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 1482
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_4
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 1495
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1496
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1497
    return-void
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomControl;->setEnabled(Z)V

    .line 1323
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 1324
    :cond_3
    return-void
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 1188
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1202
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1203
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1208
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 1

    .prologue
    .line 2193
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2195
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2197
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2202
    :cond_0
    return-void
.end method

.method private initOnScreenIndicator()V
    .locals 1

    .prologue
    .line 612
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 613
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    .line 614
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    .line 615
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    .line 616
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 618
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    .line 619
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->setEnabled(Z)V

    .line 404
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 405
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 406
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 407
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2371
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 2372
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    .line 2375
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    .line 2376
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    .line 2377
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    .line 2378
    iget-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    .line 2380
    return-void

    :cond_0
    move v0, v2

    .line 2372
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2375
    goto :goto_1
.end method

.method private initializeControlByIntent()V
    .locals 3

    .prologue
    const v2, 0x7f0b0079

    const/4 v1, 0x0

    .line 1666
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 1670
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    .line 1671
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    .line 1672
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    .line 1673
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 1682
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 1694
    :goto_0
    return-void

    .line 1684
    :cond_1
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 1685
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 1686
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/camera/Camera;->mThumbnailViewWidth:I

    .line 1689
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ModePicker;

    iput-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    .line 1690
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 433
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 438
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 441
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 443
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 446
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 449
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ShutterButton;

    iput-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 450
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 453
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 454
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 455
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 458
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 1698
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v8, v0, v1

    .line 1699
    .local v8, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_0

    .line 1700
    .local v6, mirror:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    iget-object v4, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 1705
    return-void

    .line 1699
    .end local v2           #defaultFocusModes:[Ljava/lang/String;
    .end local v6           #mirror:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initializeIndicatorControl()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1285
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlContainer;

    iput-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    .line 1287
    invoke-direct {p0}, Lcom/android/camera/Camera;->loadCameraPreferences()V

    .line 1288
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "pref_camera_flashmode_key"

    aput-object v0, v4, v1

    const-string v0, "pref_camera_whitebalance_key"

    aput-object v0, v4, v2

    const-string v0, "pref_camera_exposure_key"

    aput-object v0, v4, v3

    const-string v0, "pref_camera_scenemode_key"

    aput-object v0, v4, v6

    .line 1293
    .local v4, SETTING_KEYS:[Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/String;

    const-string v0, "pref_camera_recordlocation_key"

    aput-object v0, v5, v1

    const-string v0, "pref_camera_picturesize_key"

    aput-object v0, v5, v2

    const-string v0, "pref_camera_focusmode_key"

    aput-object v0, v5, v3

    .line 1298
    .local v5, OTHER_SETTING_KEYS:[Ljava/lang/String;
    const v0, 0x7f020072

    invoke-static {v0}, Lcom/android/camera/ui/CameraPicker;->setImageResourceId(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/IndicatorControlContainer;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPicker;

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 1304
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 1305
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlContainer;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1306
    return-void
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 1709
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 1711
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setSingleTapUpListener(Landroid/view/View;)V

    .line 1713
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomControl;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    .line 1714
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/camera/Camera;->mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

    .line 1715
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 1716
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1717
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 1718
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 489
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 491
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 493
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 494
    new-instance v1, Lcom/android/camera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$ImageSaver;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 495
    new-instance v1, Lcom/android/camera/Camera$ImageNamer;

    invoke-direct {v1}, Lcom/android/camera/Camera$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 496
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 497
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 498
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 499
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 501
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v1}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 507
    :cond_1
    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    .line 527
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomMax(I)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    new-instance v1, Lcom/android/camera/Camera$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$ZoomChangeListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1550
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1551
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1553
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2164
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1961
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 427
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 2310
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2311
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2312
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2313
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 1278
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1280
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1281
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "flashMode"
    .parameter "whiteBalance"
    .parameter "focusMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1256
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/IndicatorControlContainer;->enableFilter(Z)V

    .line 1258
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlContainer;->overrideSettings([Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/IndicatorControlContainer;->enableFilter(Z)V

    .line 1264
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 410
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 417
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2307
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2333
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2334
    iput v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 2335
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 2336
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v0, :cond_1

    .line 2339
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 2340
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2342
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlContainer;->reloadPreferences()V

    .line 2343
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 2345
    :cond_1
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2127
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2128
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 2131
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2132
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 2135
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2136
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 2139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2140
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 2145
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2146
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2149
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2152
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2153
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 2154
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2156
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1139
    iput p1, p0, Lcom/android/camera/Camera;->mCameraState:I

    .line 1140
    packed-switch p1, :pswitch_data_0

    .line 1151
    :goto_0
    return-void

    .line 1145
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1148
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    goto :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1895
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 1896
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    .line 1897
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    .line 1898
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 1902
    return-void
.end method

.method private setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1357
    const/16 v5, 0x9

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/Camera;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/Camera;->mZoomControl:Lcom/android/camera/ui/ZoomControl;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/Camera;->mOnScreenIndicators:Lcom/android/camera/ui/Rotatable;

    aput-object v6, v3, v5

    .line 1360
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1361
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1368
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/camera/ui/RotateLayout;

    if-eqz v5, :cond_2

    .line 1369
    iget-object v5, p0, Lcom/android/camera/Camera;->mReviewCancelButton:Lcom/android/camera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1371
    :cond_2
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2175
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2176
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2177
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2178
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 2180
    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 1

    .prologue
    .line 2183
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2185
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2188
    iget-object v0, p0, Lcom/android/camera/Camera;->mReviewDoneButton:Lcom/android/camera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 2190
    :cond_0
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    .line 2363
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    const v2, 0x7f0c0064

    iget v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2365
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2366
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2368
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 468
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 1905
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 1907
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1911
    iget v1, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1913
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 1914
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1916
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-nez v1, :cond_2

    .line 1919
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1920
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1922
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 1924
    :cond_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1926
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_3

    .line 1927
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1928
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, p0, Lcom/android/camera/Camera;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_5

    .line 1929
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1933
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->notifyScreenNailChanged()V

    .line 1934
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1935
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1938
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1939
    const-string v1, "camera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1942
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 1944
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_4

    .line 1945
    iget-object v1, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1947
    :cond_4
    return-void

    .line 1931
    .restart local v0       #size:Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1950
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1951
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1953
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1954
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1956
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1957
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 1958
    :cond_1
    return-void
.end method

.method private switchCamera()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2246
    iget-boolean v5, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v5, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2248
    :cond_0
    const-string v5, "camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start to switch camera. id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget v5, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    iput v5, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 2250
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2251
    iget-object v5, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    iget v6, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/CameraPicker;->setCameraId(I)V

    .line 2254
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 2255
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 2256
    iget-object v5, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2257
    :cond_1
    iget-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v5}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2260
    :cond_2
    iget-object v5, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v6, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v5, p0, v6}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2261
    iget-object v5, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v5}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2262
    new-instance v0, Lcom/android/camera/ActivityBase$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$CameraOpenThread;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 2263
    .local v0, cameraOpenThread:Lcom/android/camera/ActivityBase$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->start()V

    .line 2265
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCapabilities()V

    .line 2270
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v1, v5, v6

    .line 2271
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 2272
    .local v2, mirror:Z
    :goto_2
    iget-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v5, v2}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 2273
    iget-object v5, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v6, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2274
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 2275
    invoke-direct {p0, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2276
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 2277
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 2280
    iget v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v3, v4}, Lcom/android/camera/Camera;->setOrientationIndicator(IZ)V

    .line 2282
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 2283
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 2284
    invoke-direct {p0}, Lcom/android/camera/Camera;->showTapToFocusToastIfNeeded()V

    .line 2288
    iget-object v3, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2           #mirror:Z
    :cond_3
    move v2, v4

    .line 2271
    goto :goto_2

    .line 2266
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    :goto_0
    return-void

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 2207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 2208
    :cond_2
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 2209
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2210
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 1968
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1969
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1970
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1971
    .local v1, max:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1974
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1978
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1979
    .local v2, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1980
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 20

    .prologue
    .line 1992
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mAeLockSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1996
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mAwbLockSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2000
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2004
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2010
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_picturesize_key"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2012
    .local v9, pictureSize:Ljava/lang/String;
    if-nez v9, :cond_9

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 2019
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 2023
    .local v10, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v11

    .line 2024
    .local v11, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v11, v1, v2}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 2026
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2027
    .local v8, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v7}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2035
    :cond_4
    const-string v16, "camera"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Preview size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_scenemode_key"

    const v18, 0x7f0c0045

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2060
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mCameraId:I

    move/from16 v16, v0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v4

    .line 2062
    .local v4, jpegQuality:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v14

    .line 2069
    .local v14, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    .line 2070
    .local v5, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 2071
    .local v6, min:I
    if-lt v14, v6, :cond_b

    if-gt v14, v5, :cond_b

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2077
    :goto_2
    const-string v16, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_flashmode_key"

    const v18, 0x7f0c0037

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2082
    .local v3, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v13

    .line 2083
    .local v13, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, v13}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2094
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_whitebalance_key"

    const v18, 0x7f0c003e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2097
    .local v15, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2108
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2114
    .end local v3           #flashMode:Ljava/lang/String;
    .end local v13           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #whiteBalance:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mContinousFocusSupported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v16

    const-string v17, "continuous-picture"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mAutoFocusMoveCallback:Lcom/android/camera/Camera$AutoFocusMoveCallback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2121
    :cond_8
    :goto_6
    return-void

    .line 2015
    .end local v4           #jpegQuality:I
    .end local v5           #max:I
    .end local v6           #min:I
    .end local v7           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v8           #original:Landroid/hardware/Camera$Size;
    .end local v10           #size:Landroid/hardware/Camera$Size;
    .end local v11           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v14           #value:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v12

    .line 2016
    .local v12, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v12, v0}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 2053
    .end local v12           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v7       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v8       #original:Landroid/hardware/Camera$Size;
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    .restart local v11       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 2055
    const-string v16, "auto"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2074
    .restart local v4       #jpegQuality:I
    .restart local v5       #max:I
    .restart local v6       #min:I
    .restart local v14       #value:I
    :cond_b
    const-string v16, "camera"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid exposure range: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2086
    .restart local v3       #flashMode:Ljava/lang/String;
    .restart local v13       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    .line 2087
    if-nez v3, :cond_6

    .line 2088
    const v16, 0x7f0c0038

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 2101
    .restart local v15       #whiteBalance:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v15

    .line 2102
    if-nez v15, :cond_7

    .line 2103
    const-string v15, "auto"

    goto/16 :goto_4

    .line 2111
    .end local v3           #flashMode:Ljava/lang/String;
    .end local v13           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #whiteBalance:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2118
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1989
    :cond_0
    return-void
.end method

.method private updateExposureOnScreenIndicator(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 643
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 658
    :goto_0
    return-void

    .line 646
    :cond_0
    if-nez p1, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    .line 651
    .local v1, step:F
    iget-object v2, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 652
    iget-object v2, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 653
    iget-object v2, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%+1.1f"

    iget-object v4, p0, Lcom/android/camera/Camera;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 654
    iget-object v2, p0, Lcom/android/camera/Camera;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, exposure:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v2, p0, Lcom/android/camera/Camera;->mExposureIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v2, 0x8

    .line 661
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 664
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 670
    :cond_3
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v2, 0x8

    .line 711
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_focusmode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    const-string v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 721
    :cond_2
    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 725
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOnScreenIndicators()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 733
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateFocusOnScreenIndicator(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1269
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "auto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 684
    .local v0, isGone:Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mSceneIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #isGone:Z
    :cond_3
    move v0, v1

    .line 683
    goto :goto_1
.end method

.method private updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v2, 0x8

    .line 688
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 691
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    const-string v0, "fluorescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 697
    :cond_3
    const-string v0, "incandescent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 699
    :cond_4
    const-string v0, "daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :cond_5
    const-string v0, "cloudy-daylight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 705
    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 1794
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1795
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1796
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1801
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1802
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1803
    return-void
.end method

.method public capture()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1156
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v9

    .line 1184
    :goto_0
    return v0

    .line 1160
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 1161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1165
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    iget v1, p0, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    .line 1166
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 1168
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v7}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1171
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1174
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 1175
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/camera/Camera;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/Camera$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 1178
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 1182
    :cond_2
    iput-boolean v9, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 1183
    invoke-direct {p0, v10}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    .line 562
    iget v3, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    .line 590
    :goto_0
    return v3

    .line 565
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 567
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 570
    .local v2, y:F
    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 571
    iget-object v3, p0, Lcom/android/camera/Camera;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v3}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    if-eqz v3, :cond_2

    .line 576
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, popup:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 581
    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 584
    iget-object v3, p0, Lcom/android/camera/Camera;->mIndicatorControlContainer:Lcom/android/camera/ui/IndicatorControlContainer;

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorControlContainer;->dismissSettingPopup()Z

    .line 590
    .end local v0           #popup:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1766
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1767
    packed-switch p1, :pswitch_data_0

    .line 1785
    :goto_0
    return-void

    .line 1769
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1770
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 1771
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1772
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1773
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1776
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 1777
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1779
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1780
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2243
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2240
    iput p1, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 2242
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1722
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1723
    invoke-direct {p0}, Lcom/android/camera/Camera;->setDisplayOrientation()V

    .line 1726
    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1727
    .local v0, appRoot:Landroid/widget/LinearLayout;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1730
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1731
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1732
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040031

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1733
    const v3, 0x7f040008

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1736
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusManager()V

    .line 1738
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1739
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorControl()V

    .line 1740
    const v3, 0x7f0b0022

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1742
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v6, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v6}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 1745
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->updateThumbnailView()V

    .line 1748
    :cond_0
    const v3, 0x7f0b000f

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ShutterButton;

    iput-object v3, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 1749
    iget-object v3, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v3, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1750
    iget-object v3, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v3, v4}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 1751
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 1752
    invoke-direct {p0}, Lcom/android/camera/Camera;->initOnScreenIndicator()V

    .line 1753
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    .line 1754
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1755
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1756
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v6, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1757
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v6, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v2, v3, v6

    .line 1758
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1759
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1760
    iget-object v3, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v4, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 1761
    return-void

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    move v3, v5

    .line 1727
    goto/16 :goto_0

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    move v5, v4

    .line 1758
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 1214
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 1215
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 1216
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1217
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 1219
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1223
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1224
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 1226
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 1230
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 1231
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->createCameraScreenNail(Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1234
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1235
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusAreaIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 1238
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1241
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1243
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeControlByIntent()V

    .line 1244
    new-instance v0, Lcom/android/camera/RotateDialogController;

    const v2, 0x7f040037

    invoke-direct {v0, p0, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 1245
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    .line 1246
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 1247
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeMiscControls()V

    .line 1248
    new-instance v0, Lcom/android/camera/LocationManager;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 1249
    invoke-direct {p0}, Lcom/android/camera/Camera;->initOnScreenIndicator()V

    .line 1251
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1252
    return-void

    :cond_0
    move v0, v1

    .line 1231
    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 2360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1836
    sparse-switch p1, :sswitch_data_0

    .line 1866
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1838
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1839
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1843
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/android/camera/Camera;->onShutterButtonClick()V

    goto :goto_0

    .line 1850
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1854
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1855
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 1856
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1857
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1861
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 1859
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 1836
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1871
    packed-switch p1, :pswitch_data_0

    .line 1878
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1873
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onShutterButtonFocus(Z)V

    .line 1876
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1871
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2215
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchToOtherMode(I)V

    .line 2216
    :cond_0
    return-void
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 3

    .prologue
    .line 2349
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2355
    :goto_0
    return-void

    .line 2350
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 2351
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, str:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    .line 2354
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 1608
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1611
    invoke-virtual {p0}, Lcom/android/camera/Camera;->waitCameraStartUpThread()V

    .line 1613
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1618
    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1622
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1624
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1627
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 1628
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1630
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    .line 1631
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 1632
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_3

    .line 1633
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->finish()V

    .line 1634
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    .line 1635
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageNamer;->finish()V

    .line 1636
    iput-object v1, p0, Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;

    .line 1640
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_4

    .line 1641
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1642
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1644
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1645
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->updateExposureOnScreenIndicator(I)V

    .line 1649
    iput-object v1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1652
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1653
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1655
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1658
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mPendingSwitchCameraId:I

    .line 1662
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1663
    :cond_6
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2296
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2317
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2329
    :goto_0
    return-void

    .line 2318
    :cond_0
    new-instance v4, Lcom/android/camera/Camera$4;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    .line 2324
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/camera/Camera;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    const v2, 0x7f0c000c

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1557
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 1558
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1559
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1562
    iput v2, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1565
    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1566
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1567
    new-instance v0, Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/Camera$CameraStartUpThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1568
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->start()V

    .line 1571
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLastThumbnail()V

    .line 1575
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 1576
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1580
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1583
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1585
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 1586
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1588
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    goto :goto_0

    .line 1578
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    .line 1416
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    .line 1410
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1404
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1401
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    .line 1402
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFaceDetection()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 2221
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2230
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2225
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2227
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 2228
    invoke-virtual {p0}, Lcom/android/camera/Camera;->setPreviewFrameLayoutAspectRatio()V

    .line 2229
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateOnScreenIndicators()V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1523
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/Camera;->mStorageSpace:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1526
    :cond_2
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    .line 1535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1539
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSnapshotOnIdle:Z

    .line 1540
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->doSnap()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    :cond_2
    if-eqz p1, :cond_3

    .line 1509
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1511
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1808
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2386
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1375
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 1376
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1380
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/Camera$ImageSaver;->waitDone()V

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 1393
    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2300
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 2301
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 2302
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1199
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1194
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2391
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2392
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 626
    :cond_0
    if-eqz p1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 534
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-eqz v3, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 536
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 537
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 538
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 539
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, p0, Lcom/android/camera/Camera;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 540
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v0, v3, v4

    .line 541
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 543
    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 544
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 545
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 541
    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFaceDetectionStarted:Z

    .line 554
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 556
    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    goto :goto_0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1594
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->cancel()V

    .line 1596
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$CameraStartUpThread;->join()V

    .line 1597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraStartUpThread:Lcom/android/camera/Camera$CameraStartUpThread;

    .line 1598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1600
    :catch_0
    move-exception v0

    goto :goto_0
.end method
