.class Lcom/parrot/freeflight/update/view/CircularSlider$1;
.super Ljava/lang/Object;
.source "CircularSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/view/CircularSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/view/CircularSlider;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/view/CircularSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/view/CircularSlider;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 643
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->access$000(Lcom/parrot/freeflight/update/view/CircularSlider;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->access$002(Lcom/parrot/freeflight/update/view/CircularSlider;Z)Z

    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    .line 645
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider$1;->this$0:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-static {v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->access$100(Lcom/parrot/freeflight/update/view/CircularSlider;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
