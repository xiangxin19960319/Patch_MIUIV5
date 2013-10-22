.class public Lcom/android/camera/PanoramaActivity;
.super Lcom/android/camera/ActivityBase;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/camera/ModePicker$OnModeChangeListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaActivity$WaitProcessorTask;,
        Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaActivity$MosaicJpeg;,
        Lcom/android/camera/PanoramaActivity$SetupCameraThread;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_TIME_FORMAT_STR:Ljava/lang/String; = "kk/1,mm/1,ss/1"

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x5

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x3

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x4

.field private static final MSG_RESET_TO_PREVIEW_WITH_THUMBNAIL:I = 0x2

.field private static final PANNING_SPEED_THRESHOLD:F = 25.0f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "PanoramaActivity"


# instance fields
.field private mCameraOrientation:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mModePicker:Lcom/android/camera/ModePicker;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTransformMatrix:[F

.field private mUpdateTexImageRunnable:Ljava/lang/Runnable;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    .line 150
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    .line 1201
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->setupCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaActivity;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/PanoramaActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaActivity;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaActivity;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/PanoramaActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaActivity;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaActivity;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->onBackgroundThreadFinished()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 850
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 852
    monitor-exit v1

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 470
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 471
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 478
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 480
    .local v0, isLandscape:Z
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 481
    :cond_0
    new-instance v1, Lcom/android/camera/MosaicPreviewRenderer;

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 484
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 485
    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetToPreview()V

    .line 488
    :cond_1
    return-void

    .line 474
    .end local v0           #isLandscape:Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 475
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 476
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->notifyScreenNailChanged()V

    goto :goto_0

    .line 478
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 454
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 725
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaActivity;->setContentView(I)V

    .line 726
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 727
    .local v0, appRes:Landroid/content/res/Resources;
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 728
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    .line 729
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    .line 730
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    .line 731
    new-instance v1, Lcom/android/camera/RotateDialogController;

    const v2, 0x7f040037

    invoke-direct {v1, p0, v2}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 732
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setViews(Landroid/content/res/Resources;)V

    .line 733
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 388
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 389
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 390
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 391
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 393
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 394
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 397
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 400
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 401
    if-ge v0, v4, :cond_0

    .line 402
    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    .line 403
    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    .line 404
    move v4, v0

    .line 405
    const/4 v2, 0x1

    goto :goto_0

    .line 408
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 930
    sparse-switch p0, :sswitch_data_0

    .line 940
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 932
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 938
    :goto_0
    return-object v0

    .line 934
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 936
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 938
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 930
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 514
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1198
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1199
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1191
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1194
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 845
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 846
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 379
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 380
    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 381
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraOrientation:I

    .line 382
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mUsingFrontCamera:Z

    .line 383
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 367
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 368
    iput-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 371
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 870
    iput v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 876
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->setSwipingEnabled(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 879
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 882
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1188
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 886
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->startCameraPreview()V

    .line 887
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    .line 840
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 841
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 13
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 900
    if-eqz p1, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, filename:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v12

    .line 905
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 906
    invoke-static {v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 908
    .local v11, filepath:Ljava/lang/String;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    invoke-direct {v10, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 910
    .local v10, exif:Landroid/media/ExifInterface;
    const-string v0, "GPSDateStamp"

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v0, "GPSTimeStamp"

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "DateTime"

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mDateTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v0, "Orientation"

    invoke-static/range {p4 .. p4}, Lcom/android/camera/PanoramaActivity;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v1           #filename:Ljava/lang/String;
    .end local v10           #exif:Landroid/media/ExifInterface;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v12

    .line 920
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v11       #filepath:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 921
    .local v9, e:Ljava/io/IOException;
    const-string v0, "PanoramaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set EXIF for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 926
    .end local v1           #filename:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 11
    .parameter "appRes"

    .prologue
    const v10, 0x7f09000a

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 653
    iput v7, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 654
    const v5, 0x7f0b0066

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/PanoProgressBar;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 655
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 656
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v6, 0x7f09000b

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 657
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v6, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColor:I

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 658
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v6, Lcom/android/camera/PanoramaActivity$6;

    invoke-direct {v6, p0}, Lcom/android/camera/PanoramaActivity$6;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 668
    const v5, 0x7f0b0067

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    .line 669
    const v5, 0x7f0b0068

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    .line 670
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 671
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    const v5, 0x7f0b006a

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    .line 674
    const v5, 0x7f0b0064

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    .line 675
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 677
    const v5, 0x7f0b0046

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/PanoProgressBar;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 678
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 679
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 680
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 681
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v6, 0x7f09000c

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 683
    const v5, 0x7f0b0063

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/RotateLayout;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    .line 685
    const v5, 0x7f0b007a

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/RotateImageView;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    .line 686
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 687
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v5}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailViewWidth:I

    .line 689
    const v5, 0x7f0b0041

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    .line 690
    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    .line 692
    const v5, 0x7f0b0034

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ModePicker;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    .line 693
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v5, v7}, Lcom/android/camera/ModePicker;->setVisibility(I)V

    .line 694
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v5, p0}, Lcom/android/camera/ModePicker;->setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V

    .line 695
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v5, v9}, Lcom/android/camera/ModePicker;->setCurrentMode(I)V

    .line 697
    const v5, 0x7f0b000f

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ShutterButton;

    iput-object v5, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 698
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v6, 0x7f020021

    invoke-virtual {v5, v6}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 699
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v5, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_0

    .line 703
    const/16 v5, 0xa

    new-array v4, v5, [Lcom/android/camera/ui/Rotatable;

    const v5, 0x7f0b0065

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v7

    const v5, 0x7f0b0069

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v8

    const v5, 0x7f0b0044

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v9

    const/4 v6, 0x3

    const v5, 0x7f0b0045

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v6

    const/4 v6, 0x4

    const v5, 0x7f0b0047

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v6

    const/4 v6, 0x5

    const v5, 0x7f0b0049

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/Rotatable;

    aput-object v5, v4, v6

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    aput-object v6, v4, v5

    .line 714
    .local v4, rotateLayout:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 715
    .local v3, r:Lcom/android/camera/ui/Rotatable;
    const/16 v5, 0x10e

    invoke-interface {v3, v5, v7}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v0           #arr$:[Lcom/android/camera/ui/Rotatable;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/android/camera/ui/Rotatable;
    .end local v4           #rotateLayout:[Lcom/android/camera/ui/Rotatable;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v5, v7, v7}, Lcom/android/camera/RotateDialogController;->setOrientation(IZ)V

    .line 722
    :cond_1
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->openCamera()V

    .line 359
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 360
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 362
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 412
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 413
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 414
    const-string v6, "PanoramaActivity"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 416
    const-string v6, "PanoramaActivity"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaActivity;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 420
    :cond_0
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget v6, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 423
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 425
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 426
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 427
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 428
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 431
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 432
    iget-object v6, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 439
    :goto_0
    invoke-virtual {p1, v9}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 441
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mHorizontalViewAngle:F

    .line 442
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaActivity;->mVerticalViewAngle:F

    .line 443
    return-void

    .line 435
    :cond_1
    const-string v6, "PanoramaActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaActivity;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/16 v1, 0x8

    .line 890
    if-eqz p1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 897
    return-void
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 620
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1148
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "PanoramaActivity"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1167
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraState:I

    .line 1168
    return-void
.end method

.method private stopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 579
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 580
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    .line 581
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideDirectionIndicators()V

    .line 582
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 585
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->stopCameraPreview()V

    .line 587
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 589
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 591
    new-instance v0, Lcom/android/camera/PanoramaActivity$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$5;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 610
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 611
    return-void
.end method

.method private switchToOtherMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->keep(Lcom/android/camera/Thumbnail;)V

    .line 459
    :cond_1
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->finish()V

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 3
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x41c8

    .line 634
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 639
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->showTooFastIndication()V

    .line 645
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    float-to-int v0, p3

    .line 649
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 650
    return-void

    .line 643
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->hideTooFastIndication()V

    goto :goto_0

    .line 645
    :cond_2
    float-to-int v0, p4

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaActivity$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1094
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1095
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1130
    :goto_0
    return-object v5

    .line 1097
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1098
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1101
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1102
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1103
    const-string v2, "PanoramaActivity"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto :goto_0

    .line 1107
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1108
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1110
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1112
    .local v4, height:I
    const-string v2, "PanoramaActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1116
    :cond_3
    const-string v2, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0

    .line 1121
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1122
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1123
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1125
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;[BII)V

    goto/16 :goto_0

    .line 1126
    :catch_0
    move-exception v6

    .line 1127
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "PanoramaActivity"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    new-instance v5, Lcom/android/camera/PanoramaActivity$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaActivity$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaActivity;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 446
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 447
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 449
    iget v1, p0, Lcom/android/camera/PanoramaActivity;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaActivity;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    :cond_2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->cancelHighResComputation()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1005
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, lowResReview:Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1011
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1014
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1015
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1016
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040032

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1017
    const v2, 0x7f040008

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1019
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1020
    const v2, 0x7f04001d

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1022
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaActivity;->setViews(Landroid/content/res/Resources;)V

    .line 1023
    iget-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    iget-object v2, p0, Lcom/android/camera/PanoramaActivity;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->updateThumbnailView()V

    .line 1030
    return-void

    .line 1011
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 238
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->createContentView()V

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 243
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaActivity;->createCameraScreenNail(Z)V

    .line 245
    new-instance v3, Lcom/android/camera/PanoramaActivity$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$1;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mUpdateTexImageRunnable:Ljava/lang/Runnable;

    .line 256
    new-instance v3, Lcom/android/camera/PanoramaActivity$2;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$2;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 278
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "kk/1,mm/1,ss/1"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 279
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 280
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 281
    .local v2, tzUTC:Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 282
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/camera/PanoramaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 285
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "Panorama"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    new-instance v3, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-direct {v3, p0, p0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    .line 289
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mTransformMatrix:[F

    .line 290
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 292
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    .local v0, appRes:Landroid/content/res/Resources;
    const v3, 0x7f0c005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPreparePreviewString:Ljava/lang/String;

    .line 294
    const v3, 0x7f0c0060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogTitle:Ljava/lang/String;

    .line 295
    const v3, 0x7f0c0051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogOkString:Ljava/lang/String;

    .line 296
    const v3, 0x7f0c005f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 297
    const v3, 0x7f0c0062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 301
    new-instance v3, Lcom/android/camera/PanoramaActivity$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaActivity$3;-><init>(Lcom/android/camera/PanoramaActivity;)V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMainHandler:Landroid/os/Handler;

    .line 350
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surface"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "oldr"
    .parameter "oldb"

    .prologue
    .line 496
    invoke-super/range {p0 .. p9}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 497
    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onModeChanged(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 465
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaActivity;->switchToOtherMode(I)V

    .line 466
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 963
    iput-boolean v1, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    .line 964
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 966
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->disable()V

    .line 967
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 972
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    if-ne v0, v1, :cond_1

    .line 973
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    .line 974
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->reset()V

    .line 977
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->releaseCamera()V

    .line 978
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 982
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 984
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 987
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V

    .line 988
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 989
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 990
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 992
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->resetScreenOn()V

    .line 993
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_4

    .line 994
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 995
    iput-object v2, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    .line 997
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 998
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1000
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1034
    iput-boolean v5, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    .line 1035
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1036
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mOrientationEventListener:Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->enable()V

    .line 1038
    iput v5, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 1040
    new-instance v1, Lcom/android/camera/PanoramaActivity$SetupCameraThread;

    invoke-direct {v1, p0, v6}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    .line 1041
    .local v1, setupCameraThread:Lcom/android/camera/PanoramaActivity$SetupCameraThread;
    invoke-virtual {v1}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->start()V

    .line 1043
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/PanoramaActivity$SetupCameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/PanoramaActivity;->mOpenCameraFail:Z

    if-eqz v3, :cond_0

    .line 1049
    const v3, 0x7f0c0001

    invoke-static {p0, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 1083
    :goto_1
    return-void

    .line 1051
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/PanoramaActivity;->mCameraDisabled:Z

    if-eqz v3, :cond_1

    .line 1052
    const v3, 0x7f0c0002

    invoke-static {p0, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1057
    :cond_1
    new-instance v3, Landroid/media/MediaActionSound;

    invoke-direct {v3}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    .line 1058
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 1059
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 1062
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v3}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1063
    iget-boolean v3, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v3}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1064
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1065
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v4, p0, Lcom/android/camera/PanoramaActivity;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1066
    new-instance v3, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;

    invoke-direct {v3, p0, v6}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaActivity;Lcom/android/camera/PanoramaActivity$1;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/camera/PanoramaActivity$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PanoramaActivity;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1078
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->getLastThumbnail()V

    .line 1079
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1082
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    goto :goto_1

    .line 1068
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1071
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->initMosaicFrameProcessorIfNeeded()V

    .line 1072
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1073
    .local v2, w:I
    iget-object v3, p0, Lcom/android/camera/PanoramaActivity;->mPreviewArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1074
    .local v0, h:I
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1075
    invoke-direct {p0, v2, v0}, Lcom/android/camera/PanoramaActivity;->configMosaicPreview(II)V

    goto :goto_2

    .line 1044
    .end local v0           #h:I
    .end local v2           #w:I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 744
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 745
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->startCapture()V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->stopCapture(Z)V

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 755
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaActivity;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->gotoGallery()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1172
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 1173
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOnAwhile()V

    .line 1174
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 759
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 760
    new-instance v0, Lcom/android/camera/PanoramaActivity$7;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$7;-><init>(Lcom/android/camera/PanoramaActivity;)V

    .line 784
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 785
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lcom/android/camera/PanoramaActivity$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaActivity$8;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaActivity;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/camera/PanoramaActivity;->reportProgress()V

    .line 836
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    iput-boolean v2, p0, Lcom/android/camera/PanoramaActivity;->mCancelComputation:Z

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaActivity;->mTimeTaken:J

    .line 539
    invoke-virtual {p0, v2}, Lcom/android/camera/PanoramaActivity;->setSwipingEnabled(Z)V

    .line 540
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureState:I

    .line 541
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mCaptureIndicator:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 543
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaActivity;->showDirectionIndicators(I)V

    .line 544
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaActivity$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaActivity$4;-><init>(Lcom/android/camera/PanoramaActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mModePicker:Lcom/android/camera/ModePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ModePicker;->setEnabled(Z)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 570
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/PanoramaActivity;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 573
    iget v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaActivity;->mDeviceOrientationAtCapture:I

    .line 574
    invoke-direct {p0}, Lcom/android/camera/PanoramaActivity;->keepScreenOn()V

    .line 575
    return-void
.end method
