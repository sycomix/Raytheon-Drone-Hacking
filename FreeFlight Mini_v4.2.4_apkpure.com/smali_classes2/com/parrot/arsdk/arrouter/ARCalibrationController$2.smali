.class Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;
.super Ljava/lang/Object;
.source "ARCalibrationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARCalibrationController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 110
    .local v0, "res":[I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$400(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1, v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$500(Lcom/parrot/arsdk/arrouter/ARCalibrationController;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v2}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$600(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)[I

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$700(Lcom/parrot/arsdk/arrouter/ARCalibrationController;[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARCalibrationController$2;->this$0:Lcom/parrot/arsdk/arrouter/ARCalibrationController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/ARCalibrationController;->access$300(Lcom/parrot/arsdk/arrouter/ARCalibrationController;)V

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method
