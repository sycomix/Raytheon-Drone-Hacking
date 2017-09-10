.class public Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
.super Ljava/lang/Object;
.source "ARMavlinkMissionItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private autocontinue:I

.field private command:I

.field private current:Z

.field private frame:I

.field private isCreateByMe:Z

.field private nativeMissionItem:J

.field private param1:F

.field private param2:F

.field private param3:F

.field private param4:F

.field private seq:I

.field private target_component:I

.field private target_system:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 112
    invoke-direct {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    .line 114
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "itemPtr"    # J

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 122
    iput-wide p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    .line 124
    return-void
.end method

.method public static CreateMavlinkChangeSpeedMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "groundSpeed"    # I
    .param p1, "speed"    # F
    .param p2, "throttle"    # F

    .prologue
    .line 259
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 260
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkChangeSpeedMissionItem(JIFF)I

    move-result v2

    .line 262
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 264
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 266
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 274
    :goto_0
    return-object v1

    .line 270
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkCreatePanoramaMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "horizontalAngle"    # F
    .param p1, "verticalAngle"    # F
    .param p2, "horizontalRotationSpeed"    # F
    .param p3, "verticalRotationSpeed"    # F

    .prologue
    .line 447
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 448
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkCreatePanorama(JFFFF)I

    move-result v8

    .line 450
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 452
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 454
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 462
    :goto_0
    return-object v7

    .line 458
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 460
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkDelay(F)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "durationDelay"    # F

    .prologue
    .line 388
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 389
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkDelay(JF)I

    move-result v2

    .line 391
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 393
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 395
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 403
    :goto_0
    return-object v1

    .line 399
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 401
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkImageStartCaptureMissionItem(FFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "period"    # F
    .param p1, "imagesCount"    # F
    .param p2, "resolution"    # F

    .prologue
    .line 365
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 366
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkImageStartCapture(JFFF)I

    move-result v2

    .line 367
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 368
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 378
    :goto_0
    return-object v1

    .line 374
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkImageStopCaptureMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6

    .prologue
    .line 412
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 413
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkImageStopCapture(J)I

    move-result v2

    .line 415
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 417
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 419
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 427
    :goto_0
    return-object v1

    .line 423
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 425
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkLandMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F

    .prologue
    .line 232
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 233
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkLandMissionItem(JFFFF)I

    move-result v8

    .line 235
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 237
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 239
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 247
    :goto_0
    return-object v7

    .line 243
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 245
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkMissionItemWithAllParams(FFFFFFFIIIII)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 17
    .param p0, "param1"    # F
    .param p1, "param2"    # F
    .param p2, "param3"    # F
    .param p3, "param4"    # F
    .param p4, "latitude"    # F
    .param p5, "longitude"    # F
    .param p6, "altitude"    # F
    .param p7, "command"    # I
    .param p8, "seq"    # I
    .param p9, "frame"    # I
    .param p10, "current"    # I
    .param p11, "autocontinue"    # I

    .prologue
    .line 176
    new-instance v15, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 177
    .local v15, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkMissionItemWithAllParams(JFFFFFFFIIIII)I

    move-result v16

    .line 179
    .local v16, "value":I
    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v14

    .line 181
    .local v14, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v14, v0, :cond_0

    .line 183
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 191
    :goto_0
    return-object v15

    .line 187
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v15}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 189
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkNavWaypointMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 9
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F

    .prologue
    .line 204
    new-instance v7, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 205
    .local v7, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkNavWaypointMissionItem(JFFFF)I

    move-result v8

    .line 207
    .local v8, "value":I
    invoke-static {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v6

    .line 209
    .local v6, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v6, v0, :cond_0

    .line 211
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 219
    :goto_0
    return-object v7

    .line 215
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 217
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkSetROI(Lcom/parrot/arsdk/armavlink/MAV_ROI;IIFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 11
    .param p0, "mode"    # Lcom/parrot/arsdk/armavlink/MAV_ROI;
    .param p1, "missionIndex"    # I
    .param p2, "roiIndex"    # I
    .param p3, "latitude"    # F
    .param p4, "longitude"    # F
    .param p5, "altitude"    # F

    .prologue
    .line 478
    new-instance v9, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 479
    .local v9, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/MAV_ROI;->ordinal()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetROI(JIIIFFF)I

    move-result v10

    .line 481
    .local v10, "value":I
    invoke-static {v10}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v8

    .line 483
    .local v8, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v8, v0, :cond_0

    .line 485
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 493
    :goto_0
    return-object v9

    .line 489
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v9}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 491
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkSetViewMode(Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;I)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "viewModeType"    # Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;
    .param p1, "roiIndex"    # I

    .prologue
    .line 505
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 506
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/MAV_VIEW_MODE_TYPE;->ordinal()I

    move-result v3

    invoke-static {v4, v5, v3, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkSetViewMode(JII)I

    move-result v2

    .line 508
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 510
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 512
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 520
    :goto_0
    return-object v1

    .line 516
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 518
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkTakeoffMissionItem(FFFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 10
    .param p0, "latitude"    # F
    .param p1, "longitude"    # F
    .param p2, "altitude"    # F
    .param p3, "yaw"    # F
    .param p4, "pitch"    # F

    .prologue
    .line 288
    new-instance v8, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 289
    .local v8, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkTakeoffMissionItem(JFFFFF)I

    move-result v9

    .line 291
    .local v9, "value":I
    invoke-static {v9}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v7

    .line 293
    .local v7, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v7, v0, :cond_0

    .line 295
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 303
    :goto_0
    return-object v8

    .line 299
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Mavlink Mission Item Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v8}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 301
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkVideoStartCaptureMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p0, "cameraId"    # I
    .param p1, "framesPerSeconds"    # F
    .param p2, "resolution"    # F

    .prologue
    .line 315
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 316
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5, p0, p1, p2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkVideoStartCapture(JIFF)I

    move-result v2

    .line 318
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 320
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 322
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 330
    :goto_0
    return-object v1

    .line 326
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 328
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static CreateMavlinkVideoStopCaptureMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6

    .prologue
    .line 339
    new-instance v1, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    invoke-direct {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;-><init>()V

    .line 340
    .local v1, "missionItem":Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getNativePointer()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeCreateMavlinkVideoStopCapture(J)I

    move-result v2

    .line 342
    .local v2, "value":I
    invoke-static {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    .line 344
    .local v0, "error":Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_OK:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-ne v0, v3, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->updateFromNative()V

    .line 354
    :goto_0
    return-object v1

    .line 350
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Mavlink Mission Item Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V

    .line 352
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeCreateMavlinkChangeSpeedMissionItem(JIFF)I
.end method

.method private static native nativeCreateMavlinkCreatePanorama(JFFFF)I
.end method

.method private static native nativeCreateMavlinkDelay(JF)I
.end method

.method private static native nativeCreateMavlinkImageStartCapture(JFFF)I
.end method

.method private static native nativeCreateMavlinkImageStopCapture(J)I
.end method

.method private static native nativeCreateMavlinkLandMissionItem(JFFFF)I
.end method

.method private static native nativeCreateMavlinkMissionItemWithAllParams(JFFFFFFFIIIII)I
.end method

.method private static native nativeCreateMavlinkNavWaypointMissionItem(JFFFF)I
.end method

.method private static native nativeCreateMavlinkSetROI(JIIIFFF)I
.end method

.method private static native nativeCreateMavlinkSetViewMode(JII)I
.end method

.method private static native nativeCreateMavlinkTakeoffMissionItem(JFFFFF)I
.end method

.method private static native nativeCreateMavlinkVideoStartCapture(JIFF)I
.end method

.method private static native nativeCreateMavlinkVideoStopCapture(J)I
.end method

.method private native nativeDelete(J)J
.end method

.method private native nativeGetAutocontinue(J)I
.end method

.method private native nativeGetCommand(J)I
.end method

.method private native nativeGetCurrent(J)I
.end method

.method private native nativeGetFrame(J)I
.end method

.method private native nativeGetParam1(J)F
.end method

.method private native nativeGetParam2(J)F
.end method

.method private native nativeGetParam3(J)F
.end method

.method private native nativeGetParam4(J)F
.end method

.method private native nativeGetSeq(J)I
.end method

.method private native nativeGetTargetComponent(J)I
.end method

.method private native nativeGetTargetSystem(J)I
.end method

.method private native nativeGetX(J)F
.end method

.method private native nativeGetY(J)F
.end method

.method private native nativeGetZ(J)F
.end method

.method private native nativeNew()J
.end method

.method private native nativeSetAutocontinue(JI)V
.end method

.method private native nativeSetCommand(JI)V
.end method

.method private native nativeSetCurrent(JI)V
.end method

.method private native nativeSetFrame(JI)V
.end method

.method private native nativeSetParam1(JF)V
.end method

.method private native nativeSetParam2(JF)V
.end method

.method private native nativeSetParam3(JF)V
.end method

.method private native nativeSetParam4(JF)V
.end method

.method private native nativeSetSeq(JI)V
.end method

.method private native nativeSetTargetComponent(JI)V
.end method

.method private native nativeSetTargetSystem(JI)V
.end method

.method private native nativeSetX(JF)V
.end method

.method private native nativeSetY(JF)V
.end method

.method private native nativeSetZ(JF)V
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 136
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->isCreateByMe:Z

    if-eqz v0, :cond_0

    .line 138
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeDelete(J)J

    .line 139
    iput-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    .line 141
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAutocontinue()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    return v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    return v0
.end method

.method public getNativePointer()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    return-wide v0
.end method

.method public getParam1()F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    return v0
.end method

.method public getParam1FromNative()F
    .locals 6

    .prologue
    .line 563
    const/high16 v0, -0x40800000    # -1.0f

    .line 564
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 565
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam1(J)F

    move-result v0

    .line 567
    :cond_0
    return v0
.end method

.method public getParam2()F
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    return v0
.end method

.method public getParam2FromNative()F
    .locals 6

    .prologue
    .line 584
    const/high16 v0, -0x40800000    # -1.0f

    .line 585
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 586
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam2(J)F

    move-result v0

    .line 588
    :cond_0
    return v0
.end method

.method public getParam3()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    return v0
.end method

.method public getParam3FromNative()F
    .locals 6

    .prologue
    .line 605
    const/high16 v0, -0x40800000    # -1.0f

    .line 606
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 607
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam3(J)F

    move-result v0

    .line 609
    :cond_0
    return v0
.end method

.method public getParam4()F
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    return v0
.end method

.method public getParam4FromNative()F
    .locals 6

    .prologue
    .line 626
    const/high16 v0, -0x40800000    # -1.0f

    .line 627
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 628
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam4(J)F

    move-result v0

    .line 630
    :cond_0
    return v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    return v0
.end method

.method public getTargetComponent()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    return v0
.end method

.method public getTargetSystem()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    return v0
.end method

.method public getXFromNative()F
    .locals 6

    .prologue
    .line 647
    const/high16 v0, -0x40800000    # -1.0f

    .line 648
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 649
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetX(J)F

    move-result v0

    .line 651
    :cond_0
    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    return v0
.end method

.method public getYFromNative()F
    .locals 6

    .prologue
    .line 668
    const/high16 v0, -0x40800000    # -1.0f

    .line 669
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 670
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetY(J)F

    move-result v0

    .line 672
    :cond_0
    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    return v0
.end method

.method public getZFromNative()F
    .locals 6

    .prologue
    .line 689
    const/high16 v0, -0x40800000    # -1.0f

    .line 690
    .local v0, "retVal":F
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 691
    iget-wide v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetZ(J)F

    move-result v0

    .line 693
    :cond_0
    return v0
.end method

.method public isCurrent()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    return v0
.end method

.method public setAutocontinue(I)V
    .locals 4
    .param p1, "autocontinue"    # I

    .prologue
    .line 782
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 784
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    .line 785
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetAutocontinue(JI)V

    .line 787
    :cond_0
    return-void
.end method

.method public setCommand(I)V
    .locals 4
    .param p1, "command"    # I

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 723
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 724
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCommand(JI)V

    .line 726
    :cond_0
    return-void
.end method

.method public setCurrent(Z)V
    .locals 4
    .param p1, "current"    # Z

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 771
    iput-boolean p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    .line 772
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCurrent(JI)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetCurrent(JI)V

    goto :goto_0
.end method

.method public setFrame(I)V
    .locals 4
    .param p1, "frame"    # I

    .prologue
    .line 757
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 759
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    .line 760
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetFrame(JI)V

    .line 762
    :cond_0
    return-void
.end method

.method public setParam1(F)V
    .locals 4
    .param p1, "param1"    # F

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 573
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    .line 574
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam1(JF)V

    .line 576
    :cond_0
    return-void
.end method

.method public setParam2(F)V
    .locals 4
    .param p1, "param2"    # F

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 594
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    .line 595
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam2(JF)V

    .line 597
    :cond_0
    return-void
.end method

.method public setParam3(F)V
    .locals 4
    .param p1, "param3"    # F

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 615
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    .line 616
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam3(JF)V

    .line 618
    :cond_0
    return-void
.end method

.method public setParam4(F)V
    .locals 4
    .param p1, "param4"    # F

    .prologue
    .line 634
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 636
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    .line 637
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetParam4(JF)V

    .line 639
    :cond_0
    return-void
.end method

.method public setSeq(I)V
    .locals 4
    .param p1, "seq"    # I

    .prologue
    .line 709
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 711
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    .line 712
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetSeq(JI)V

    .line 714
    :cond_0
    return-void
.end method

.method public setTargetComponent(I)V
    .locals 4
    .param p1, "target_component"    # I

    .prologue
    .line 745
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 747
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    .line 748
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetTargetComponent(JI)V

    .line 750
    :cond_0
    return-void
.end method

.method public setTargetSystem(I)V
    .locals 4
    .param p1, "target_system"    # I

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 735
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    .line 736
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetTargetSystem(JI)V

    .line 738
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 655
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 657
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    .line 658
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetX(JF)V

    .line 660
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 678
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    .line 679
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetY(JF)V

    .line 681
    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 4
    .param p1, "z"    # F

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 699
    iput p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    .line 700
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1, p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeSetZ(JF)V

    .line 702
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FPTimelineFragment [param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target_system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target_component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autocontinue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCommandCode()V
    .locals 4

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 552
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCommand(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 554
    :cond_0
    return-void
.end method

.method public updateFromNative()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 528
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 530
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam1(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param1:F

    .line 531
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam2(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param2:F

    .line 532
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam3(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param3:F

    .line 533
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetParam4(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->param4:F

    .line 534
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetX(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->x:F

    .line 535
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetY(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->y:F

    .line 536
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetZ(J)F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->z:F

    .line 537
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetSeq(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->seq:I

    .line 538
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCommand(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->command:I

    .line 539
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetTargetSystem(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_system:I

    .line 540
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetTargetComponent(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->target_component:I

    .line 541
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetFrame(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->frame:I

    .line 542
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetCurrent(J)I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    .line 544
    :goto_0
    iget-wide v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeMissionItem:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->nativeGetAutocontinue(J)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->autocontinue:I

    .line 547
    :cond_0
    return-void

    .line 543
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->current:Z

    goto :goto_0
.end method
