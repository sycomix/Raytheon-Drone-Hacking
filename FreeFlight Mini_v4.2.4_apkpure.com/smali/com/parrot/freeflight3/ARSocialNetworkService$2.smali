.class Lcom/parrot/freeflight3/ARSocialNetworkService$2;
.super Ljava/lang/Object;
.source "ARSocialNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARSocialNetworkService;->beginPicasaUploadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$tags:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iput-object p2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$albumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$description:Ljava/lang/String;

    iput-object p7, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$tags:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 162
    new-instance v0, Lcom/parrot/freeflight3/ARPicasaManager;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    invoke-direct {v0, v2}, Lcom/parrot/freeflight3/ARPicasaManager;-><init>(Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;)V

    .line 163
    .local v0, "picasaManager":Lcom/parrot/freeflight3/ARPicasaManager;
    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->this$0:Lcom/parrot/freeflight3/ARSocialNetworkService;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$accountName:Ljava/lang/String;

    const-string v4, "ARFreeFlight"

    invoke-virtual {v0, v2, v3, v4}, Lcom/parrot/freeflight3/ARPicasaManager;->signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 165
    .local v6, "isSignedIn":Z
    if-eqz v6, :cond_0

    .line 167
    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight3/ARPicasaManager;->createAlbumIfNeeded(Ljava/lang/String;)Lcom/google/gdata/data/photos/AlbumEntry;

    move-result-object v1

    .line 169
    .local v1, "album":Lcom/google/gdata/data/photos/AlbumEntry;
    if-eqz v1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$description:Ljava/lang/String;

    iget-object v5, p0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;->val$tags:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight3/ARPicasaManager;->uploadPhoto(Lcom/google/gdata/data/photos/AlbumEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v1    # "album":Lcom/google/gdata/data/photos/AlbumEntry;
    :cond_0
    return-void
.end method
