.class Lcom/parrot/freeflight/update/UpdaterUiController$5;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/UpdaterUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessingProgressChange(FI)V
    .locals 6
    .param p1, "progress"    # F
    .param p2, "second"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$402(Lcom/parrot/freeflight/update/UpdaterUiController;I)I

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v0

    const-string v1, "%d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController$5;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v4}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$500(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0804e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setDisplayValue(Ljava/lang/String;)V

    .line 159
    :cond_1
    return-void
.end method
