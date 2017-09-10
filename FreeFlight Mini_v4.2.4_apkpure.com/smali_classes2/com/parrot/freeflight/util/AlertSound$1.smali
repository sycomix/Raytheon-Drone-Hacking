.class Lcom/parrot/freeflight/util/AlertSound$1;
.super Ljava/lang/Object;
.source "AlertSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/util/AlertSound;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/util/AlertSound;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/util/AlertSound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/util/AlertSound;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/util/AlertSound$1;->this$0:Lcom/parrot/freeflight/util/AlertSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound$1;->this$0:Lcom/parrot/freeflight/util/AlertSound;

    invoke-static {v0}, Lcom/parrot/freeflight/util/AlertSound;->access$000(Lcom/parrot/freeflight/util/AlertSound;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound$1;->this$0:Lcom/parrot/freeflight/util/AlertSound;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/AlertSound;->playAlertSound()V

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/util/AlertSound$1;->this$0:Lcom/parrot/freeflight/util/AlertSound;

    invoke-static {v0}, Lcom/parrot/freeflight/util/AlertSound;->access$100(Lcom/parrot/freeflight/util/AlertSound;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :cond_0
    return-void
.end method
