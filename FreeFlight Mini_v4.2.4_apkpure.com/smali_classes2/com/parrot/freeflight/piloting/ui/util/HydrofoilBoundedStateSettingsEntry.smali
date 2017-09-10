.class public abstract Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "HydrofoilBoundedStateSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/util/DoubleBoundedState;",
        "Ljava/lang/Double;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mInterpretedTexts:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStep:D

.field protected final mUnit:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "step"    # D
    .param p5, "interpretedTexts"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    const/16 v0, 0x8

    new-instance v1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-direct {v1}, Lcom/parrot/freeflight/util/DoubleBoundedState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mUnit:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mStep:D

    .line 22
    iput-object p5, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getInterpretedValue()Ljava/lang/String;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_1

    .line 48
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v3, v10

    .line 49
    .local v3, "length":I
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    .line 50
    .local v0, "currentValue":D
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v6

    .line 51
    .local v6, "minValue":D
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v10, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v10}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    .line 52
    .local v4, "maxValue":D
    sub-double v10, v4, v6

    int-to-double v12, v3

    div-double v8, v10, v12

    .line 53
    .local v8, "subdivision":D
    sub-double v10, v0, v6

    div-double/2addr v10, v8

    double-to-int v2, v10

    .line 54
    .local v2, "index":I
    if-ge v2, v3, :cond_0

    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    aget-object v10, v10, v2

    .line 56
    .end local v0    # "currentValue":D
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v4    # "maxValue":D
    .end local v6    # "minValue":D
    .end local v8    # "subdivision":D
    :goto_0
    return-object v10

    .line 54
    .restart local v0    # "currentValue":D
    .restart local v2    # "index":I
    .restart local v3    # "length":I
    .restart local v4    # "maxValue":D
    .restart local v6    # "minValue":D
    .restart local v8    # "subdivision":D
    :cond_0
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    add-int/lit8 v11, v3, -0x1

    aget-object v10, v10, v11

    goto :goto_0

    .line 56
    .end local v0    # "currentValue":D
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v4    # "maxValue":D
    .end local v6    # "minValue":D
    .end local v8    # "subdivision":D
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getInterpretedValue(D)Ljava/lang/String;
    .locals 13
    .param p1, "value"    # D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 63
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    array-length v1, v8

    .line 64
    .local v1, "length":I
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v4

    .line 65
    .local v4, "minValue":D
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v8, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v2

    .line 66
    .local v2, "maxValue":D
    sub-double v8, v2, v4

    int-to-double v10, v1

    div-double v6, v8, v10

    .line 67
    .local v6, "subdivision":D
    sub-double v8, p1, v4

    div-double/2addr v8, v6

    double-to-int v0, v8

    .line 68
    .local v0, "index":I
    if-ge v0, v1, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 70
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v2    # "maxValue":D
    .end local v4    # "minValue":D
    .end local v6    # "subdivision":D
    :goto_0
    return-object v8

    .line 68
    .restart local v0    # "index":I
    .restart local v1    # "length":I
    .restart local v2    # "maxValue":D
    .restart local v4    # "minValue":D
    .restart local v6    # "subdivision":D
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mInterpretedTexts:[Ljava/lang/String;

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    goto :goto_0

    .line 70
    .end local v0    # "index":I
    .end local v1    # "length":I
    .end local v2    # "maxValue":D
    .end local v4    # "minValue":D
    .end local v6    # "subdivision":D
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getStep()D
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mStep:D

    return-wide v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/util/DoubleBoundedState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedState;Lcom/parrot/freeflight/util/DoubleBoundedState;)Z
    .locals 9
    .param p1, "oldValue"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/util/DoubleBoundedState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->isSettingEnabled()Z

    move-result v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/parrot/freeflight/util/DoubleBoundedState;->update(DDDZ)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/util/DoubleBoundedState;

    check-cast p2, Lcom/parrot/freeflight/util/DoubleBoundedState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->hasChanged(Lcom/parrot/freeflight/util/DoubleBoundedState;Lcom/parrot/freeflight/util/DoubleBoundedState;)Z

    move-result v0

    return v0
.end method
