.class Lcom/parrot/freeflight/core/model/DelosModel$2;
.super Ljava/lang/Object;
.source "DelosModel.java"

# interfaces
.implements Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onARMediaRecordControllerFailed(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V
    .locals 4
    .param p1, "controller"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f080113

    const/16 v2, 0x10

    .line 1322
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1602(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    .line 1324
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    invoke-virtual {p2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1349
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1700(Lcom/parrot/freeflight/core/model/DelosModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/model/DelosModel$2$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/DelosModel$2$2;-><init>(Lcom/parrot/freeflight/core/model/DelosModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1355
    return-void

    .line 1326
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1802(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    .line 1327
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/16 v1, 0xf

    const v2, 0x7f08032f

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1900(Lcom/parrot/freeflight/core/model/DelosModel;II)V

    goto :goto_0

    .line 1331
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1802(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    .line 1332
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1900(Lcom/parrot/freeflight/core/model/DelosModel;II)V

    goto :goto_0

    .line 1339
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1802(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    .line 1340
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1900(Lcom/parrot/freeflight/core/model/DelosModel;II)V

    goto :goto_0

    .line 1324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onARMediaRecordControllerStateChange(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V
    .locals 3
    .param p1, "controller"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "state"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1284
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    invoke-virtual {p2}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1311
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1700(Lcom/parrot/freeflight/core/model/DelosModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/core/model/DelosModel$2$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/DelosModel$2$1;-><init>(Lcom/parrot/freeflight/core/model/DelosModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1317
    return-void

    .line 1286
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1402(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    goto :goto_0

    .line 1290
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1402(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    goto :goto_0

    .line 1294
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1500(Lcom/parrot/freeflight/core/model/DelosModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1602(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    .line 1296
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1502(Lcom/parrot/freeflight/core/model/DelosModel;Z)Z

    .line 1297
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotosCount(Lcom/parrot/freeflight/core/model/Model;)V

    .line 1298
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isOnTheGround()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->incrementPhotosCountTakenDuringRun(Lcom/parrot/freeflight/core/model/Model;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosModel$2;->this$0:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->access$1402(Lcom/parrot/freeflight/core/model/DelosModel;I)I

    goto :goto_0

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
