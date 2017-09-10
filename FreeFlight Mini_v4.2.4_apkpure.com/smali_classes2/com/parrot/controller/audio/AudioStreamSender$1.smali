.class Lcom/parrot/controller/audio/AudioStreamSender$1;
.super Ljava/lang/Object;
.source "AudioStreamSender.java"

# interfaces
.implements Lcom/parrot/arsdk/arstream/ARStreamSenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/audio/AudioStreamSender;->startStream()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/audio/AudioStreamSender;


# direct methods
.method constructor <init>(Lcom/parrot/controller/audio/AudioStreamSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/audio/AudioStreamSender;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/controller/audio/AudioStreamSender$1;->this$0:Lcom/parrot/controller/audio/AudioStreamSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didUpdateFrameStatus(Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;Lcom/parrot/arsdk/arsal/ARNativeData;)V
    .locals 2
    .param p1, "status"    # Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;
    .param p2, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;

    .prologue
    .line 72
    sget-object v0, Lcom/parrot/controller/audio/AudioStreamSender$2;->$SwitchMap$com$parrot$arsdk$arstream$ARSTREAM_SENDER_STATUS_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arstream/ARSTREAM_SENDER_STATUS_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    .end local p2    # "data":Lcom/parrot/arsdk/arsal/ARNativeData;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local p2    # "data":Lcom/parrot/arsdk/arsal/ARNativeData;
    :pswitch_0
    if-eqz p2, :cond_0

    .line 78
    check-cast p2, Lcom/parrot/controller/stream/ARFrame;

    .end local p2    # "data":Lcom/parrot/arsdk/arsal/ARNativeData;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/parrot/controller/stream/ARFrame;->setAvailable(Z)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
