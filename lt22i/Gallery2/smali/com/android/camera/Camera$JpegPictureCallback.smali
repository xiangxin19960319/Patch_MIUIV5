.class final Lcom/android/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 774
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 17
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 783
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;J)J

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-eqz v1, :cond_2

    .line 788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 790
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 798
    :goto_1
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v13, v5, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFocusManager:Lcom/android/camera/FocusManager;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Lcom/android/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/Camera;->setCameraState(I)V
    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFaceDetection()V

    .line 808
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 811
    .local v12, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v9

    .line 813
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3000(Lcom/android/camera/Camera;)I

    move-result v1

    add-int/2addr v1, v9

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 814
    iget v6, v12, Landroid/hardware/Camera$Size;->width:I

    .line 815
    .local v6, width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    .line 820
    .local v7, height:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 821
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageNamer:Lcom/android/camera/Camera$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/Camera$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageSaver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget v8, v2, Lcom/android/camera/Camera;->mThumbnailViewWidth:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/Camera$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 837
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #title:Ljava/lang/String;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v12           #s:Landroid/hardware/Camera$Size;
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)V

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 840
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)J

    move-result-wide v13

    sub-long v13, v10, v13

    iput-wide v13, v1, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 841
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    iget-wide v13, v5, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v1, v13, v14}, Lcom/android/camera/Camera;->access$2902(Lcom/android/camera/Camera;J)J

    goto/16 :goto_0

    .line 793
    .end local v10           #now:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/android/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Lcom/android/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 817
    .restart local v9       #orientation:I
    .restart local v12       #s:Landroid/hardware/Camera$Size;
    :cond_3
    iget v6, v12, Landroid/hardware/Camera$Size;->height:I

    .line 818
    .restart local v6       #width:I
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    .restart local v7       #height:I
    goto/16 :goto_2

    .line 825
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v9           #orientation:I
    .end local v12           #s:Landroid/hardware/Camera$Size;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/Camera;->mJpegImageData:[B
    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$3202(Lcom/android/camera/Camera;[B)[B

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mQuickCapture:Z
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->showPostCaptureAlert()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)V

    goto/16 :goto_3

    .line 829
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->doAttach()V
    invoke-static {v1}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    goto/16 :goto_3
.end method
