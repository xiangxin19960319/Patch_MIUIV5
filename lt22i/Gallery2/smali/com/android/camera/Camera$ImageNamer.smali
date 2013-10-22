.class Lcom/android/camera/Camera$ImageNamer;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mHeight:I

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageNamer;->start()V

    .line 1057
    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 1126
    iget-wide v0, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/android/camera/Camera$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/android/camera/Camera$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1128
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 1120
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mStop:Z

    .line 1121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    monitor-exit p0

    return-void

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1078
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1080
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1087
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1088
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    monitor-exit p0

    return-object v0

    .line 1078
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 2
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 1062
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 1063
    move v0, p4

    .line 1064
    .local v0, tmp:I
    move p4, p5

    .line 1065
    move p5, v0

    .line 1067
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z

    .line 1068
    iput-object p1, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 1069
    iput-wide p2, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    .line 1070
    iput p4, p0, Lcom/android/camera/Camera$ImageNamer;->mWidth:I

    .line 1071
    iput p5, p0, Lcom/android/camera/Camera$ImageNamer;->mHeight:I

    .line 1072
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    monitor-exit p0

    return-void

    .line 1062
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 1101
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    monitor-exit p0

    return-void

    .line 1102
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1104
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1110
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->cleanOldUri()V

    .line 1111
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->generateUri()V

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
