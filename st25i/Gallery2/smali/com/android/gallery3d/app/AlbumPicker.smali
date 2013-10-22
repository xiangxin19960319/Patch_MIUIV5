.class public Lcom/android/gallery3d/app/AlbumPicker;
.super Lcom/android/gallery3d/app/PickerActivity;
.source "AlbumPicker.java"


# static fields
.field public static final KEY_ALBUM_PATH:Ljava/lang/String; = "album-path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f0c00c7

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AlbumPicker;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 34
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v3, "get-album"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v3, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 41
    return-void

    .line 35
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
