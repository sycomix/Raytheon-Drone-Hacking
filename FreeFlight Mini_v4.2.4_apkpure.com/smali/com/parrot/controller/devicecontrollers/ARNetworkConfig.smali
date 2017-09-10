.class public abstract Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
.super Ljava/lang/Object;
.source "ARNetworkConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkConfig"

.field protected static bleNotificationIDs:[I

.field protected static c2dParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field protected static commandsBuffers:[I

.field protected static d2cParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field protected static hasVideo:Z

.field protected static inboundPort:I

.field protected static iobufferC2dAck:I

.field protected static iobufferC2dArstreamAck:I

.field protected static iobufferC2dArstreamAudioAck:I

.field protected static iobufferC2dArstreamAudioData:I

.field protected static iobufferC2dEmergency:I

.field protected static iobufferC2dNack:I

.field protected static iobufferD2cArstreamAudioAck:I

.field protected static iobufferD2cArstreamAudioData:I

.field protected static iobufferD2cArstreamData:I

.field protected static iobufferD2cEvents:I

.field protected static iobufferD2cNavdata:I

.field protected static outboundPort:I

.field protected static videoMaxAckInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 13
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dNack:I

    .line 14
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    .line 15
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dEmergency:I

    .line 16
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAck:I

    .line 17
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cNavdata:I

    .line 18
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cEvents:I

    .line 19
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamData:I

    .line 20
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioAck:I

    .line 21
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioData:I

    .line 22
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioData:I

    .line 23
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioAck:I

    .line 26
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->inboundPort:I

    .line 27
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->outboundPort:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    .line 31
    new-array v0, v2, [I

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->commandsBuffers:[I

    .line 33
    sput-boolean v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo:Z

    .line 34
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->videoMaxAckInterval:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->bleNotificationIDs:[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->updateParams()V

    .line 41
    return-void
.end method


# virtual methods
.method public addAudioStreamReaderIOBuffer(II)V
    .locals 4
    .param p1, "maxFragmentSize"    # I
    .param p2, "maxNumberOfFragment"    # I

    .prologue
    const/4 v2, -0x1

    .line 237
    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioAck:I

    if-eq v1, v2, :cond_4

    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioData:I

    if-eq v1, v2, :cond_4

    .line 239
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 241
    .local v0, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioAck:I

    if-ne v2, v3, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 244
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 252
    .restart local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioData:I

    if-ne v2, v3, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 255
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioAck:I

    invoke-static {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioData:I

    invoke-static {v2, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_4
    return-void
.end method

.method public addAudioStreamSenderIOBuffer(II)V
    .locals 4
    .param p1, "maxFragmentSize"    # I
    .param p2, "maxNumberOfFragment"    # I

    .prologue
    const/4 v2, -0x1

    .line 272
    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioAck:I

    if-eq v1, v2, :cond_4

    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioData:I

    if-eq v1, v2, :cond_4

    .line 274
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 276
    .local v0, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioData:I

    if-ne v2, v3, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 279
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 287
    .restart local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioAck:I

    if-ne v2, v3, :cond_2

    .line 289
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 290
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioAck:I

    invoke-static {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioData:I

    invoke-static {v2, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4
    return-void
.end method

.method public addStreamReaderIOBuffer(II)V
    .locals 4
    .param p1, "maxFragmentSize"    # I
    .param p2, "maxNumberOfFragment"    # I

    .prologue
    const/4 v2, -0x1

    .line 200
    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAck:I

    if-eq v1, v2, :cond_4

    sget v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamData:I

    if-eq v1, v2, :cond_4

    .line 203
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 205
    .local v0, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAck:I

    if-ne v2, v3, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 208
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 216
    .restart local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->getId()I

    move-result v2

    sget v3, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamData:I

    if-ne v2, v3, :cond_2

    .line 218
    invoke-virtual {v0}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    .line 219
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 226
    .end local v0    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_3
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAck:I

    invoke-static {v2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newAckARNetworkIOBufferParam(I)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    sget v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamData:I

    invoke-static {v2, p1, p2}, Lcom/parrot/arsdk/arstream/ARStreamReader;->newDataARNetworkIOBufferParam(III)Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_4
    return-void
.end method

.method public commonCommandsAckedIOBuffer()I
    .locals 1

    .prologue
    .line 160
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    return v0
.end method

.method public getBLENotificationIDs()[I
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->bleNotificationIDs:[I

    return-object v0
.end method

.method public getC2dAckId()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    return v0
.end method

.method public getC2dAudioAckId()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioAck:I

    return v0
.end method

.method public getC2dAudioDataId()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAudioData:I

    return v0
.end method

.method public getC2dEmergencyId()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dEmergency:I

    return v0
.end method

.method public getC2dNackId()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dNack:I

    return v0
.end method

.method public getC2dParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getC2dParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    return-object v0
.end method

.method public getCommandsIOBuffers()[I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->commandsBuffers:[I

    return-object v0
.end method

.method public getD2cAckIdId()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cEvents:I

    return v0
.end method

.method public getD2cAudioAckId()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioAck:I

    return v0
.end method

.method public getD2cAudioDataId()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamAudioData:I

    return v0
.end method

.method public getD2cParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getD2cParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultVideoMaxAckInterval()I
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->videoMaxAckInterval:I

    return v0
.end method

.method public getInboundPort()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->inboundPort:I

    return v0
.end method

.method public getOutboundPort()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->outboundPort:I

    return v0
.end method

.method public getVideoAckIOBuffer()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dArstreamAck:I

    return v0
.end method

.method public getVideoDataIOBuffer()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cArstreamData:I

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo:Z

    return v0
.end method

.method protected abstract updateParams()V
.end method
