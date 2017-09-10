.class Lcom/parrot/freeflight/update/UpdaterUiController$1;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;


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

.field final synthetic val$df:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/text/DecimalFormat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdaterUiController$1;->val$df:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/parrot/freeflight/update/view/CircularSlider;D)V
    .locals 4
    .param p1, "view"    # Lcom/parrot/freeflight/update/view/CircularSlider;
    .param p2, "currentValue"    # D

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController$1;->this$0:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PROCESSING_UPDATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController$1;->val$df:Ljava/text/DecimalFormat;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->setDisplayValue(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
