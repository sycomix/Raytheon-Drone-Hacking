.class Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;
.super Ljava/lang/Object;
.source "DirectPairingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DirectPairingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;->this$0:Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->access$102(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 66
    :cond_0
    return-void
.end method
