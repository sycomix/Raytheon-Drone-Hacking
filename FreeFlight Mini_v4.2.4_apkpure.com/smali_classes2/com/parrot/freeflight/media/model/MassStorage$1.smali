.class Lcom/parrot/freeflight/media/model/MassStorage$1;
.super Ljava/lang/Object;
.source "MassStorage.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/MassStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/model/MassStorage;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/model/MassStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/model/MassStorage;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/MassStorage$1;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoChanged(II)V
    .locals 1
    .param p1, "sizeInMBytes"    # I
    .param p2, "usedSizeInMBytes"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$1;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/MassStorage$1;->this$0:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-static {v0}, Lcom/parrot/freeflight/media/model/MassStorage;->access$000(Lcom/parrot/freeflight/media/model/MassStorage;)Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;->onSizeInfoChanged(II)V

    .line 25
    :cond_0
    return-void
.end method
