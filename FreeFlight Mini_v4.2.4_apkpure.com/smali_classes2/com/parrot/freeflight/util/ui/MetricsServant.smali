.class public Lcom/parrot/freeflight/util/ui/MetricsServant;
.super Ljava/lang/Object;
.source "MetricsServant.java"


# static fields
.field private static final COUNTRY_CODE_LIBERIA:Ljava/lang/String; = "LR"

.field private static final COUNTRY_CODE_MYANMAR:Ljava/lang/String; = "MM"

.field private static final DURATION_FORMAT:Ljava/lang/String; = "%02d:%02d"

.field private static final ONE_METER_IN_FEET:F = 3.2808f

.field private static final TIME_UNIT_MAX:I = 0x3c


# instance fields
.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUsesImperialUnits:Z

.field private final onDecimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->onDecimalFormat:Ljava/text/DecimalFormat;

    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    .line 35
    const v2, 0x7f090008

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "country":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    .line 41
    .end local v0    # "country":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :cond_2
    iput-boolean v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    goto :goto_0
.end method


# virtual methods
.method public convertDistance(F)F
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    if-eqz v0, :cond_0

    const v0, 0x4051f8a1

    mul-float/2addr p1, v0

    .end local p1    # "distance":F
    :cond_0
    return p1
.end method

.method public convertSpeed(F)F
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    if-eqz v0, :cond_0

    const v0, 0x4051f8a1

    mul-float/2addr p1, v0

    .end local p1    # "speed":F
    :cond_0
    return p1
.end method

.method public format(DLcom/parrot/freeflight/util/ui/Unit;Z)Ljava/lang/String;
    .locals 11
    .param p1, "value"    # D
    .param p3, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isDecimal"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    const-wide/16 v2, 0x0

    .line 140
    .local v2, "convertedValue":D
    const/4 v0, 0x0

    .line 141
    .local v0, "convertedUnit":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    if-eqz v4, :cond_0

    .line 142
    sget-object v4, Lcom/parrot/freeflight/util/ui/MetricsServant$1;->$SwitchMap$com$parrot$freeflight$util$ui$Unit:[I

    invoke-virtual {p3}, Lcom/parrot/freeflight/util/ui/Unit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 157
    move-wide v2, p1

    .line 158
    iget-object v4, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p3}, Lcom/parrot/freeflight/util/ui/Unit;->getResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    if-eqz p4, :cond_2

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.1f %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "formattedValue":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 144
    .end local v1    # "formattedValue":Ljava/lang/String;
    :pswitch_0
    const-wide v4, 0x400a3f1420000000L    # 3.2808001041412354

    mul-double v2, p1, v4

    .line 145
    iget-object v4, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0801ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    goto :goto_0

    .line 148
    :pswitch_1
    const-wide v4, 0x400a3f1420000000L    # 3.2808001041412354

    mul-double v2, p1, v4

    .line 149
    iget-object v4, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0801ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_0

    .line 165
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.0f %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public formatAltitudeString(F)Ljava/lang/String;
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatAltitudeString(FZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatAltitudeString(FZ)Ljava/lang/String;
    .locals 3
    .param p1, "altitude"    # F
    .param p2, "unitUpperCase"    # Z

    .prologue
    const v2, 0x7f080332

    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatDistanceString(F)Ljava/lang/String;
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatDistanceString(FZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDistanceString(FZ)Ljava/lang/String;
    .locals 6
    .param p1, "distance"    # F
    .param p2, "unitUpperCase"    # Z

    .prologue
    const v5, 0x7f080332

    const v3, 0x7f0802c3

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 126
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 127
    const-string v2, "?"

    .line 133
    :goto_0
    return-object v2

    .line 128
    :cond_0
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_2

    .line 129
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "kilometerUnit":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->onDecimalFormat:Ljava/text/DecimalFormat;

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 129
    .end local v0    # "kilometerUnit":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "meterUnit":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 132
    .end local v1    # "meterUnit":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public formatRecordDuration(J)Ljava/lang/String;
    .locals 11
    .param p1, "recordTimeDurationInSeconds"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 50
    div-long v0, p1, v6

    .line 51
    .local v0, "minutes":J
    div-long v2, v0, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 54
    const-string v2, "%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public formatSpeedString(F)Ljava/lang/String;
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatSpeedString(FZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSpeedString(FZ)Ljava/lang/String;
    .locals 5
    .param p1, "speed"    # F
    .param p2, "unitUpperCase"    # Z

    .prologue
    const v4, 0x7f0802e6

    .line 78
    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->onDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->onDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDistanceUnit()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0801ae

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f080332

    goto :goto_0
.end method

.method public getSpeedUnit()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ui/MetricsServant;->mUsesImperialUnits:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0801ad

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0802e6

    goto :goto_0
.end method
