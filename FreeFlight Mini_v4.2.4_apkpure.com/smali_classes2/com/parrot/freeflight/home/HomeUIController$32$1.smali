.class Lcom/parrot/freeflight/home/HomeUIController$32$1;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController$32;->onMediaListed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/home/HomeUIController$32;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/home/HomeUIController$32;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$32$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$32$1;->this$1:Lcom/parrot/freeflight/home/HomeUIController$32;

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeUIController$32;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3800(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1346
    return-void
.end method
