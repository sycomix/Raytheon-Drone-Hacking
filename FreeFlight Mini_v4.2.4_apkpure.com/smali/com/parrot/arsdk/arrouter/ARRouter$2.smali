.class Lcom/parrot/arsdk/arrouter/ARRouter$2;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARCalibrationController$ARMagnetoCalibrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$2;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public magnetoCalibrationUpdated(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;III)V
    .locals 6
    .param p1, "status"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;
    .param p2, "xQuality"    # I
    .param p3, "yQuality"    # I
    .param p4, "zQuality"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouter$2;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$200(Lcom/parrot/arsdk/arrouter/ARRouter;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_CALIBRATIONSTATE_MAGNETOCALIBRATIONSTATE_STATUS_ENUM;IIIZ)V

    .line 280
    return-void
.end method
