.class public final Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field private static final TAG:Ljava/lang/String; = "Gallery"


# instance fields
.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 130
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 125
    .restart local v1       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 127
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const-string v3, "Gallery"

    const-string v4, "action PICK is not supported"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, type:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    const-string v3, "/image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_1
    const-string v3, "/video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    .end local v2           #type:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 113
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 115
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 119
    return-void

    .line 110
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #typeBits:I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 22
    .parameter "intent"

    .prologue
    .line 135
    const-string v2, "slideshow"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 136
    .local v20, slideshow:Ljava/lang/Boolean;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v14

    .line 139
    .local v14, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v17

    .line 140
    .local v17, path:Lcom/android/gallery3d/data/Path;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v17

    .line 145
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v11, data:Landroid/os/Bundle;
    const-string v2, "media-set-path"

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "random-order"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string v2, "repeat"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v2, "dream"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const-string v2, "dream"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v11}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 232
    .end local v14           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v17           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-void

    .line 154
    .end local v11           #data:Landroid/os/Bundle;
    :cond_3
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 155
    .restart local v11       #data:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v12

    .line 156
    .local v12, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 157
    .local v4, uri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, contentType:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 159
    const v2, 0x7f0c00dd

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 164
    :cond_4
    if-nez v4, :cond_5

    .line 165
    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v21

    .line 166
    .local v21, typeBits:I
    const-string v2, "type-bits"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "media-path"

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v11}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 170
    .end local v21           #typeBits:I
    :cond_5
    const-string v2, "vnd.android.cursor.dir"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 172
    const-string v2, "mediaTypes"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 173
    .local v16, mediaType:I
    if-eqz v16, :cond_6

    .line 174
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mediaTypes"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 178
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v12, v4, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v18

    .line 179
    .local v18, setPath:Lcom/android/gallery3d/data/Path;
    const/4 v15, 0x0

    .line 180
    .local v15, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v18, :cond_7

    .line 181
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v15

    .end local v15           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    check-cast v15, Lcom/android/gallery3d/data/MediaSet;

    .line 183
    .restart local v15       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_7
    if-eqz v15, :cond_9

    .line 184
    invoke-virtual {v15}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 185
    const-string v2, "media-path"

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "parent-media-path"

    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v11}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 190
    :cond_8
    const-string v2, "media-path"

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v11}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 194
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 197
    .end local v15           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v16           #mediaType:I
    .end local v18           #setPath:Lcom/android/gallery3d/data/Path;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v4, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v13

    .line 198
    .local v13, itemPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v12, v13}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 200
    .local v9, albumPath:Lcom/android/gallery3d/data/Path;
    const-string v2, "SingleItemOnly"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 201
    .local v19, singleItemOnly:Z
    if-nez v19, :cond_b

    if-eqz v9, :cond_b

    .line 202
    const-string v2, "media-set-path"

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_b
    const-string v2, "media-item-path"

    invoke-virtual {v13}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 206
    const-string v2, "treat-back-as-up"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    :cond_c
    new-instance v1, Lcom/android/gallery3d/app/Gallery$1;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/app/Gallery$1;-><init>(Lcom/android/gallery3d/app/Gallery;Landroid/content/ContentResolver;)V

    .line 226
    .local v1, queryHandler:Landroid/content/AsyncQueryHandler;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_display_name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v11}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 262
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 61
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 63
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->setContentView(I)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->initializeByIntent()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 255
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 243
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 247
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    :cond_0
    return-void
.end method
