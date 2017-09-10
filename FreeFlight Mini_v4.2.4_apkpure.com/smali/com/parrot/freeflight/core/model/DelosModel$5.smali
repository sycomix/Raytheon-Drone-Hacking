.class synthetic Lcom/parrot/freeflight/core/model/DelosModel$5;
.super Ljava/lang/Object;
.source "DelosModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

.field static final synthetic $SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2431
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_USER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_CUT_OUT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_CRITICAL_BATTERY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_LOW_BATTERY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_NONE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_59

    .line 2402
    :goto_4
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_GEAR_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_58

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_GEAR_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_57

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_GEAR_3:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_PLANEGEARBOXCHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_56

    .line 2373
    :goto_7
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_QUADRICOPTER:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_55

    :goto_8
    :try_start_9
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_PLANE_FORWARD:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_54

    :goto_9
    :try_start_a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_PLANE_BACKWARD:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGMODECHANGED_MODE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_53

    .line 2318
    :goto_a
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    :try_start_b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_BUSY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_52

    :goto_b
    :try_start_c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_LOWBATTERY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_51

    :goto_c
    :try_start_d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_MEMORYFULL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_50

    :goto_d
    :try_start_e
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_NOTAVAILABLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4f

    :goto_e
    :try_start_f
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4e

    :goto_f
    :try_start_10
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4d

    .line 2302
    :goto_10
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM:[I

    :try_start_11
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_TAKEN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4c

    :goto_11
    :try_start_12
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDEVENT_PICTUREEVENTCHANGED_EVENT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4b

    .line 2271
    :goto_12
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    :try_start_13
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_READY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4a

    :goto_13
    :try_start_14
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_BUSY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_49

    :goto_14
    :try_start_15
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_NOTAVAILABLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_MEDIARECORDSTATE_PICTURESTATECHANGEDV2_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_48

    .line 2182
    :goto_15
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    :try_start_16
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_HEADLIGHTS_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_47

    :goto_16
    :try_start_17
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_HEADLIGHTS_OSCILLATION:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_46

    :goto_17
    :try_start_18
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_45

    :goto_18
    :try_start_19
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_BARREL_ROLL_180_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_44

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_BARREL_ROLL_180_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_43

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_ANIM_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_42

    .line 2171
    :goto_1b
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM:[I

    :try_start_1c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_STARTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_41

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_STOPPED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ANIMATIONSSTATE_LIST_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_40

    .line 2073
    :goto_1d
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    :try_start_1e
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_TRAVIS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_3f

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MARS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3e

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_SWAT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3d

    :goto_20
    :try_start_21
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_MCLANE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3c

    :goto_21
    :try_start_22
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_BLAZE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_3b

    :goto_22
    :try_start_23
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_ORAK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3a

    :goto_23
    :try_start_24
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_RS_NEWZ:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_39

    :goto_24
    :try_start_25
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_BLACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_38

    :goto_25
    :try_start_26
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_SW_WHITE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_COMMONSTATE_PRODUCTMODEL_MODEL_ENUM;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_37

    .line 1944
    :goto_26
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM:[I

    :try_start_27
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_READY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_36

    :goto_27
    :try_start_28
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_BUSY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_GUNSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_35

    .line 1896
    :goto_28
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    :try_start_29
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_OPENING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_34

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_OPENED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_33

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_CLOSED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_32

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_CLOSING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_CLAWSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_31

    .line 1852
    :goto_2c
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

    :try_start_2d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_BLINKED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_30

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_FIXED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2f

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_OSCILLATED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_USBACCESSORYSTATE_LIGHTSTATE_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2e

    .line 1784
    :goto_2f
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    :try_start_30
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_HULL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_2d

    :goto_30
    :try_start_31
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_HYDROFOIL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_2c

    :goto_31
    :try_start_32
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_NO_ACCESSORY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_2b

    :goto_32
    :try_start_33
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_STD_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_2a

    :goto_33
    :try_start_34
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_TRUCK_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_29

    :goto_34
    :try_start_35
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_UNCONFIGURED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_28

    :goto_35
    :try_start_36
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_IN_PROGRESS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_ACCESSORYCONFIGCHANGED_NEWACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_27

    .line 1745
    :goto_36
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    :try_start_37
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_HULL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_26

    :goto_37
    :try_start_38
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_HYDROFOIL:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_25

    :goto_38
    :try_start_39
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_NO_ACCESSORY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_24

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_STD_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_23

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_TRUCK_WHEELS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_ACCESSORYSTATE_SUPPORTEDACCESSORIESLISTCHANGED_ACCESSORY_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_22

    .line 1642
    :goto_3b
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    :try_start_3c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_SLOW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_21

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_MODERATE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_20

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_FAST:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_1f

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_RATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_1e

    .line 1618
    :goto_3f
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    :try_start_40
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_1d

    :goto_40
    :try_start_41
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_CURRENT_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_1c

    :goto_41
    :try_start_42
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CONSTANT_VOLTAGE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_1b

    :goto_42
    :try_start_43
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_CHARGED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_1a

    :goto_43
    :try_start_44
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_DISCHARGING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_19

    :goto_44
    :try_start_45
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_COMMON_CHARGERSTATE_CHARGINGINFO_PHASE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_18

    .line 1523
    :goto_45
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    :try_start_46
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_LANDED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_17

    :goto_46
    :try_start_47
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_TAKINGOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_16

    :goto_47
    :try_start_48
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_HOVERING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_15

    :goto_48
    :try_start_49
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_FLYING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_14

    :goto_49
    :try_start_4a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ROLLING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_13

    :goto_4a
    :try_start_4b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_LANDING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_12

    :goto_4b
    :try_start_4c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_11

    :goto_4c
    :try_start_4d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_INIT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MINIDRONE_PILOTINGSTATE_FLYINGSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_10

    .line 1324
    :goto_4d
    invoke-static {}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->values()[Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    :try_start_4e
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_STORAGEMEDIAFULL:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_f

    :goto_4e
    :try_start_4f
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOWBATTERY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_e

    :goto_4f
    :try_start_50
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOTREADY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_d

    :goto_50
    :try_start_51
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_NOSTORAGEMEDIA:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_c

    :goto_51
    :try_start_52
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_LOCKED:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_b

    :goto_52
    :try_start_53
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_UNKNOWN:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_a

    :goto_53
    :try_start_54
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIACONTROLLER_ERROR:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ARMEDIARECORDCONTROLLER_ERROR_OK:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_9

    .line 1284
    :goto_54
    invoke-static {}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->values()[Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    :try_start_55
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_8

    :goto_55
    :try_start_56
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_7

    :goto_56
    :try_start_57
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_6

    :goto_57
    :try_start_58
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_RECORDING:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_5

    .line 181
    :goto_58
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    :try_start_59
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_4

    :goto_59
    :try_start_5a
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_3

    :goto_5a
    :try_start_5b
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_2

    :goto_5b
    :try_start_5c
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_1

    :goto_5c
    :try_start_5d
    sget-object v0, Lcom/parrot/freeflight/core/model/DelosModel$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_0

    :goto_5d
    return-void

    :catch_0
    move-exception v0

    goto :goto_5d

    :catch_1
    move-exception v0

    goto :goto_5c

    :catch_2
    move-exception v0

    goto :goto_5b

    :catch_3
    move-exception v0

    goto :goto_5a

    :catch_4
    move-exception v0

    goto :goto_59

    .line 1284
    :catch_5
    move-exception v0

    goto :goto_58

    :catch_6
    move-exception v0

    goto :goto_57

    :catch_7
    move-exception v0

    goto :goto_56

    :catch_8
    move-exception v0

    goto :goto_55

    .line 1324
    :catch_9
    move-exception v0

    goto/16 :goto_54

    :catch_a
    move-exception v0

    goto/16 :goto_53

    :catch_b
    move-exception v0

    goto/16 :goto_52

    :catch_c
    move-exception v0

    goto/16 :goto_51

    :catch_d
    move-exception v0

    goto/16 :goto_50

    :catch_e
    move-exception v0

    goto/16 :goto_4f

    :catch_f
    move-exception v0

    goto/16 :goto_4e

    .line 1523
    :catch_10
    move-exception v0

    goto/16 :goto_4d

    :catch_11
    move-exception v0

    goto/16 :goto_4c

    :catch_12
    move-exception v0

    goto/16 :goto_4b

    :catch_13
    move-exception v0

    goto/16 :goto_4a

    :catch_14
    move-exception v0

    goto/16 :goto_49

    :catch_15
    move-exception v0

    goto/16 :goto_48

    :catch_16
    move-exception v0

    goto/16 :goto_47

    :catch_17
    move-exception v0

    goto/16 :goto_46

    .line 1618
    :catch_18
    move-exception v0

    goto/16 :goto_45

    :catch_19
    move-exception v0

    goto/16 :goto_44

    :catch_1a
    move-exception v0

    goto/16 :goto_43

    :catch_1b
    move-exception v0

    goto/16 :goto_42

    :catch_1c
    move-exception v0

    goto/16 :goto_41

    :catch_1d
    move-exception v0

    goto/16 :goto_40

    .line 1642
    :catch_1e
    move-exception v0

    goto/16 :goto_3f

    :catch_1f
    move-exception v0

    goto/16 :goto_3e

    :catch_20
    move-exception v0

    goto/16 :goto_3d

    :catch_21
    move-exception v0

    goto/16 :goto_3c

    .line 1745
    :catch_22
    move-exception v0

    goto/16 :goto_3b

    :catch_23
    move-exception v0

    goto/16 :goto_3a

    :catch_24
    move-exception v0

    goto/16 :goto_39

    :catch_25
    move-exception v0

    goto/16 :goto_38

    :catch_26
    move-exception v0

    goto/16 :goto_37

    .line 1784
    :catch_27
    move-exception v0

    goto/16 :goto_36

    :catch_28
    move-exception v0

    goto/16 :goto_35

    :catch_29
    move-exception v0

    goto/16 :goto_34

    :catch_2a
    move-exception v0

    goto/16 :goto_33

    :catch_2b
    move-exception v0

    goto/16 :goto_32

    :catch_2c
    move-exception v0

    goto/16 :goto_31

    :catch_2d
    move-exception v0

    goto/16 :goto_30

    .line 1852
    :catch_2e
    move-exception v0

    goto/16 :goto_2f

    :catch_2f
    move-exception v0

    goto/16 :goto_2e

    :catch_30
    move-exception v0

    goto/16 :goto_2d

    .line 1896
    :catch_31
    move-exception v0

    goto/16 :goto_2c

    :catch_32
    move-exception v0

    goto/16 :goto_2b

    :catch_33
    move-exception v0

    goto/16 :goto_2a

    :catch_34
    move-exception v0

    goto/16 :goto_29

    .line 1944
    :catch_35
    move-exception v0

    goto/16 :goto_28

    :catch_36
    move-exception v0

    goto/16 :goto_27

    .line 2073
    :catch_37
    move-exception v0

    goto/16 :goto_26

    :catch_38
    move-exception v0

    goto/16 :goto_25

    :catch_39
    move-exception v0

    goto/16 :goto_24

    :catch_3a
    move-exception v0

    goto/16 :goto_23

    :catch_3b
    move-exception v0

    goto/16 :goto_22

    :catch_3c
    move-exception v0

    goto/16 :goto_21

    :catch_3d
    move-exception v0

    goto/16 :goto_20

    :catch_3e
    move-exception v0

    goto/16 :goto_1f

    :catch_3f
    move-exception v0

    goto/16 :goto_1e

    .line 2171
    :catch_40
    move-exception v0

    goto/16 :goto_1d

    :catch_41
    move-exception v0

    goto/16 :goto_1c

    .line 2182
    :catch_42
    move-exception v0

    goto/16 :goto_1b

    :catch_43
    move-exception v0

    goto/16 :goto_1a

    :catch_44
    move-exception v0

    goto/16 :goto_19

    :catch_45
    move-exception v0

    goto/16 :goto_18

    :catch_46
    move-exception v0

    goto/16 :goto_17

    :catch_47
    move-exception v0

    goto/16 :goto_16

    .line 2271
    :catch_48
    move-exception v0

    goto/16 :goto_15

    :catch_49
    move-exception v0

    goto/16 :goto_14

    :catch_4a
    move-exception v0

    goto/16 :goto_13

    .line 2302
    :catch_4b
    move-exception v0

    goto/16 :goto_12

    :catch_4c
    move-exception v0

    goto/16 :goto_11

    .line 2318
    :catch_4d
    move-exception v0

    goto/16 :goto_10

    :catch_4e
    move-exception v0

    goto/16 :goto_f

    :catch_4f
    move-exception v0

    goto/16 :goto_e

    :catch_50
    move-exception v0

    goto/16 :goto_d

    :catch_51
    move-exception v0

    goto/16 :goto_c

    :catch_52
    move-exception v0

    goto/16 :goto_b

    .line 2373
    :catch_53
    move-exception v0

    goto/16 :goto_a

    :catch_54
    move-exception v0

    goto/16 :goto_9

    :catch_55
    move-exception v0

    goto/16 :goto_8

    .line 2402
    :catch_56
    move-exception v0

    goto/16 :goto_7

    :catch_57
    move-exception v0

    goto/16 :goto_6

    :catch_58
    move-exception v0

    goto/16 :goto_5

    .line 2431
    :catch_59
    move-exception v0

    goto/16 :goto_4

    :catch_5a
    move-exception v0

    goto/16 :goto_3

    :catch_5b
    move-exception v0

    goto/16 :goto_2

    :catch_5c
    move-exception v0

    goto/16 :goto_1

    :catch_5d
    move-exception v0

    goto/16 :goto_0
.end method
