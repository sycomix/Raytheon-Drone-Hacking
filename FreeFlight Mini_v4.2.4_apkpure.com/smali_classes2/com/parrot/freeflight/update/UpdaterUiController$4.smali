.class Lcom/parrot/freeflight/update/UpdaterUiController$4;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;


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
    .line 139
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$4;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 146
    :cond_0
    return-void
.end method
