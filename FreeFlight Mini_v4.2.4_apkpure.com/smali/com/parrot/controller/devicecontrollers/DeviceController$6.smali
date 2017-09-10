.class Lcom/parrot/controller/devicecontrollers/DeviceController$6;
.super Ljava/lang/Object;
.source "DeviceController.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;->startVideoStream2Receiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$6;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreeBuffer()I
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$6;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->getFreeBuffer()I

    move-result v0

    return v0
.end method

.method public onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V
    .locals 13
    .param p1, "bufferIdx"    # I
    .param p2, "metadata"    # J
    .param p4, "metadataSize"    # I
    .param p5, "auTimestamp"    # J
    .param p7, "auTimestampRaw"    # J
    .param p9, "auTimestampLocal"    # J
    .param p11, "auSyncType"    # Lcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$6;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v1, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V

    .line 1423
    return-void
.end method

.method public onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$6;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    iget-object v0, v0, Lcom/parrot/controller/devicecontrollers/DeviceController;->videoStream2Listener:Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/controller/devicecontrollers/DeviceControllerVideoStream2Listener;->onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
