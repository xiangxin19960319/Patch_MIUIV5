.class Lcom/android/camera/VideoCamera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #setter for: Lcom/android/camera/VideoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/camera/VideoCamera;->access$2202(Lcom/android/camera/VideoCamera;I)I

    .line 2315
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2316
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
