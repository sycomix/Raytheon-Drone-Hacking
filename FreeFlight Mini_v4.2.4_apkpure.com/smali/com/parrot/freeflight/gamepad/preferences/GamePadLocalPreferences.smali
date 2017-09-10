.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;
.super Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
.source "GamePadLocalPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences$CommandChoice;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE_COMMANDS:I = 0x1

.field private static final JSON_KEY_ACTIONS:Ljava/lang/String; = "gamePadActions"

.field private static final JSON_KEY_COMMAND_ID:Ljava/lang/String; = "commandId"

.field private static final JSON_KEY_CONTROL_NAME1:Ljava/lang/String; = "controlName1"

.field private static final JSON_KEY_CONTROL_NAME2:Ljava/lang/String; = "controlName2"

.field private static final JSON_KEY_CONTROL_TYPE1:Ljava/lang/String; = "controlType1"

.field private static final JSON_KEY_CONTROL_TYPE2:Ljava/lang/String; = "controlType2"

.field private static final JSON_KEY_DIRECTION1:Ljava/lang/String; = "direction1"

.field private static final JSON_KEY_DIRECTION2:Ljava/lang/String; = "direction2"

.field private static final JSON_KEY_ID1:Ljava/lang/String; = "id1"

.field private static final JSON_KEY_ID2:Ljava/lang/String; = "id2"

.field private static final JSON_KEY_JOYSTICK_PARAMS:Ljava/lang/String; = "joystickParams"

.field private static final JSON_KEY_JOYSTICK_PARAM_INDEX:Ljava/lang/String; = "joystickParamIndex"

.field private static final JSON_KEY_JOYSTICK_PARAM_VALUE:Ljava/lang/String; = "joystickParamValue"

.field private static final JSON_KEY_JOYSTICK_SELECTED_PARAMS:Ljava/lang/String; = "joystickSelectedParams"

.field private static final JSON_KEY_JOYSTICK_SELECTED_PARAM_VALUE:Ljava/lang/String; = "joystickSelectedParamValue"

.field public static final MAIN_COMMANDS:I = 0x0

.field private static final PREF_GAMEPAD_TYPE_:Ljava/lang/String; = "PREF_GAMEPAD_TYPE_"

.field private static final PREF_MODE_SEPARATOR:Ljava/lang/String; = "_MODE_"

.field private static final SHARED_PREF_DEFAULT_MAPPING_:Ljava/lang/String; = "SHARED_PREF_DEFAULT_MAPPING_"

.field private static final TAG:Ljava/lang/String; = "GamePadLocalPreferences"


# instance fields
.field private final mCommandChoice:I

.field private final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gamePadType"    # I
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "mappingChoice"    # I
    .param p5, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-direct {p0, p2, p5, p6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;-><init>(ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 72
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 73
    iput p4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mCommandChoice:I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREF_GAMEPAD_TYPE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHARED_PREF_DEFAULT_MAPPING_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_MODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mCommandChoice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "savedPreferences":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getMapping(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 78
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getJoystickParams(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 79
    return-void
.end method

.method private getGamePadJoystickParamsFromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .locals 18
    .param p1, "savedMapping"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 138
    .local v3, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 140
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v14, "jsonPreferences":Lorg/json/JSONObject;
    const-string v17, "joystickParams"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 142
    .local v11, "jsonJoystickParams":Lorg/json/JSONArray;
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v9, v0, [Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    .line 144
    .local v9, "joystickSensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    .local v15, "length":I
    :goto_0
    if-ge v5, v15, :cond_1

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 145
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 146
    .local v10, "jsonJoystickParam":Lorg/json/JSONObject;
    const-string v17, "joystickParamIndex"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 147
    .local v6, "index":I
    const-string v17, "joystickParamValue"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilterFactory;->create(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v1

    .line 150
    .local v1, "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    if-eqz v1, :cond_0

    .line 151
    new-instance v17, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;-><init>(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V

    aput-object v17, v9, v6

    .line 144
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    .end local v6    # "index":I
    .end local v10    # "jsonJoystickParam":Lorg/json/JSONObject;
    .end local v16    # "value":Ljava/lang/String;
    :cond_1
    const-string v17, "joystickSelectedParams"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 156
    .local v13, "jsonJoystickSelectedParams":Lorg/json/JSONArray;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 157
    .local v8, "joystickSelectedSensibilities":[I
    const/4 v5, 0x0

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    .local v7, "joystickSelectedParamsLength":I
    :goto_1
    if-ge v5, v7, :cond_2

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 158
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 159
    .local v12, "jsonJoystickSelectedParam":Lorg/json/JSONObject;
    const-string v17, "joystickSelectedParamValue"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 160
    .local v16, "value":I
    aput v16, v8, v5

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    .end local v12    # "jsonJoystickSelectedParam":Lorg/json/JSONObject;
    .end local v16    # "value":I
    :cond_2
    new-instance v4, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-direct {v4, v9, v8}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;-><init>([Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;[I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .local v4, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    move-object v3, v4

    .line 170
    .end local v4    # "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .end local v5    # "i":I
    .end local v7    # "joystickSelectedParamsLength":I
    .end local v8    # "joystickSelectedSensibilities":[I
    .end local v9    # "joystickSensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    .end local v11    # "jsonJoystickParams":Lorg/json/JSONArray;
    .end local v13    # "jsonJoystickSelectedParams":Lorg/json/JSONArray;
    .end local v14    # "jsonPreferences":Lorg/json/JSONObject;
    .end local v15    # "length":I
    .restart local v3    # "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    :cond_3
    :goto_2
    return-object v3

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private getJoystickParams(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .locals 3
    .param p1, "savedPreferences"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getGamePadJoystickParamsFromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v0

    .line 115
    :cond_0
    if-nez v0, :cond_1

    .line 116
    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadType:I

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParamsFactory;->create(ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v0

    .line 119
    :cond_1
    return-object v0
.end method

.method private getJsonFromJoystickParams()Lorg/json/JSONArray;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 235
    .local v2, "jsonJoystickParams":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getSensibilities()[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    move-result-object v3

    .line 238
    .local v3, "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 239
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v1, "jsonJoystickParam":Lorg/json/JSONObject;
    const-string v4, "joystickParamIndex"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v4, "joystickParamValue"

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    .end local v1    # "jsonJoystickParam":Lorg/json/JSONObject;
    .end local v3    # "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    :cond_0
    return-object v2
.end method

.method private getJsonFromJoystickSelectedParams()Lorg/json/JSONArray;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 251
    .local v2, "jsonJoystickSelectedParams":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getSelectedParameters()[I

    move-result-object v3

    .line 254
    .local v3, "selectedParams":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 255
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 256
    .local v1, "jsonJoystickSelectedParam":Lorg/json/JSONObject;
    const-string v4, "joystickSelectedParamValue"

    aget v5, v3, v0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v1    # "jsonJoystickSelectedParam":Lorg/json/JSONObject;
    .end local v3    # "selectedParams":[I
    :cond_0
    return-object v2
.end method

.method private getJsonFromMapping()Lorg/json/JSONArray;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 265
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 266
    .local v3, "jsonMapping":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    if-eqz v4, :cond_1

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 269
    .local v1, "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v2, "jsonInput":Lorg/json/JSONObject;
    const-string v5, "commandId"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v6}, Lcom/parrot/freeflight/gamepad/command/Command;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v5, "controlName1"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v5, "controlType1"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v5, "direction1"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    const-string v5, "id1"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    iget-object v5, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v5, :cond_0

    .line 276
    const-string v5, "controlName2"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget-object v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v5, "controlType2"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v5, "direction2"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 279
    const-string v5, "id2"

    iget-object v6, v1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/GamePad$Input;->id:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v1    # "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v2    # "jsonInput":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v3
.end method

.method private getMapping(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 1
    .param p1, "savedPreferences"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    if-eqz p1, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getMappingFromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v0

    .line 131
    :cond_0
    return-object v0
.end method

.method private getMappingFromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .locals 29
    .param p1, "savedMapping"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    const/4 v13, 0x0

    .line 177
    .local v13, "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mCommandChoice:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadType:I

    move/from16 v28, v0

    invoke-static/range {v25 .. v28}, Lcom/parrot/freeflight/gamepad/command/CommandListFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/command/Command;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_5

    .line 182
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v21, "jsonPreferences":Lorg/json/JSONObject;
    const-string v25, "gamePadActions"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 184
    .local v20, "jsonActions":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v10, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    .local v22, "length":I
    :goto_0
    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 187
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 190
    .local v19, "jsonAction":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 192
    .local v12, "gamePadInput2":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const-string v25, "controlName1"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 193
    .local v23, "name1":Ljava/lang/String;
    const-string v25, "controlType1"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    .local v4, "controlType1":I
    const-string v25, "direction1"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 195
    .local v6, "direction1":I
    const-string v25, "id1"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 196
    .local v17, "id1":I
    new-instance v11, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-direct {v11, v0, v4, v6, v1}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 198
    .local v11, "gamePadInput1":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const-string v25, "controlName2"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 199
    const-string v25, "controlName2"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 200
    .local v24, "name2":Ljava/lang/String;
    const-string v25, "controlType2"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "controlType2":I
    const-string v25, "direction2"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 202
    .local v7, "direction2":I
    const-string v25, "id2"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 203
    .local v18, "id2":I
    new-instance v12, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .end local v12    # "gamePadInput2":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-direct {v12, v0, v5, v7, v1}, Lcom/parrot/freeflight/gamepad/GamePad$Input;-><init>(Ljava/lang/String;III)V

    .line 206
    .end local v5    # "controlType2":I
    .end local v7    # "direction2":I
    .end local v18    # "id2":I
    .end local v24    # "name2":Ljava/lang/String;
    .restart local v12    # "gamePadInput2":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_0
    const-string v25, "commandId"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 208
    .local v16, "id":I
    const/4 v9, 0x0

    .line 209
    .local v9, "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/command/Command;

    .line 210
    .local v2, "command":Lcom/parrot/freeflight/gamepad/command/Command;
    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/command/Command;->getId()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 211
    new-instance v9, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .end local v9    # "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-direct {v9, v2, v11, v12, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;-><init>(Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;Ljava/lang/Object;)V

    .line 216
    .end local v2    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    .restart local v9    # "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_2
    if-eqz v9, :cond_3

    .line 217
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 221
    .end local v4    # "controlType1":I
    .end local v6    # "direction1":I
    .end local v9    # "gamePadAction":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v11    # "gamePadInput1":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v12    # "gamePadInput2":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v16    # "id":I
    .end local v17    # "id1":I
    .end local v19    # "jsonAction":Lorg/json/JSONObject;
    .end local v23    # "name1":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_5

    new-instance v14, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-direct {v14, v10}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .local v14, "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    move-object v13, v14

    .line 228
    .end local v10    # "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    .end local v14    # "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    .end local v15    # "i":I
    .end local v20    # "jsonActions":Lorg/json/JSONArray;
    .end local v21    # "jsonPreferences":Lorg/json/JSONObject;
    .end local v22    # "length":I
    .restart local v13    # "gamePadMapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_5
    :goto_1
    const-string v25, "GamePadLocalPreferences"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getMappingFromString() returned: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v13

    .line 223
    :catch_0
    move-exception v8

    .line 224
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private getStringFromPreferences()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v1, "jsonPreferences":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "gamePadActions"

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getJsonFromMapping()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v2, "joystickParams"

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getJsonFromJoystickParams()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v2, "joystickSelectedParams"

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getJsonFromJoystickSelectedParams()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHARED_PREF_DEFAULT_MAPPING_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_MODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mCommandChoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getJoystickParams(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 103
    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 104
    return-void
.end method

.method public saveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 1
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->saveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 94
    return-void
.end method

.method public saveMapping(Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 4
    .param p1, "gamePadMapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mGamePadMapping:Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    .line 84
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->getStringFromPreferences()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "newMapping":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHARED_PREF_DEFAULT_MAPPING_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_MODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;->mCommandChoice:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method
