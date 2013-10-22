.class Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/PanoramaActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    .line 203
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 204
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 211
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/android/camera/PanoramaActivity;->access$100(Lcom/android/camera/PanoramaActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    #setter for: Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1, v2}, Lcom/android/camera/PanoramaActivity;->access$102(Lcom/android/camera/PanoramaActivity;I)I

    .line 215
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$100(Lcom/android/camera/PanoramaActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 217
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    #getter for: Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/camera/PanoramaActivity;->access$200(Lcom/android/camera/PanoramaActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/camera/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/camera/PanoramaActivity;

    #setter for: Lcom/android/camera/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/camera/PanoramaActivity;->access$202(Lcom/android/camera/PanoramaActivity;I)I

    goto :goto_0
.end method
