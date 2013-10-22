.class public Lcom/android/gallery3d/util/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/Profile$1;,
        Lcom/android/gallery3d/util/Profile$Watchdog;,
        Lcom/android/gallery3d/util/Profile$WatchEntry;
    }
.end annotation


# static fields
.field private static final NS_PER_MS:I = 0xf4240

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-direct {v0}, Lcom/android/gallery3d/util/Profile$Watchdog;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static commit()V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/Profile$Watchdog;->commit(Ljava/lang/Thread;)V

    .line 219
    return-void
.end method

.method public static disable()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/Profile$Watchdog;->removeWatchEntry(Ljava/lang/Thread;)V

    .line 193
    return-void
.end method

.method public static disableAll()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/Profile$Watchdog;->removeAllWatchEntries()V

    .line 198
    return-void
.end method

.method public static drop()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/Profile$Watchdog;->drop(Ljava/lang/Thread;)V

    .line 223
    return-void
.end method

.method public static dumpToFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 202
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->dumpToFile(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static enable(I)V
    .locals 2
    .parameter "cycleTimeInMs"

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 187
    .local v0, t:Ljava/lang/Thread;
    sget-object v1, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v1, v0, p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->addWatchEntry(Ljava/lang/Thread;I)V

    .line 188
    return-void
.end method

.method public static hold()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/Profile$Watchdog;->hold(Ljava/lang/Thread;)V

    .line 215
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/gallery3d/util/Profile;->sWatchdog:Lcom/android/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/Profile$Watchdog;->reset()V

    .line 208
    return-void
.end method
