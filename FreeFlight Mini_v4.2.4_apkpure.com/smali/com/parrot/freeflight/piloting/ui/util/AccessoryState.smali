.class public Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
.super Ljava/lang/Object;
.source "AccessoryState.java"


# instance fields
.field private mCurrentAccessory:I

.field private mSupportedAccessory:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mSupportedAccessory:I

    .line 8
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mCurrentAccessory:I

    return-void
.end method


# virtual methods
.method public getCurrentAccessory()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mCurrentAccessory:I

    return v0
.end method

.method public getSupportedAccessory()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mSupportedAccessory:I

    return v0
.end method

.method public update(II)Z
    .locals 2
    .param p1, "supportedAccessory"    # I
    .param p2, "configuredAccessory"    # I

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateSupportedAccessory(I)Z

    move-result v0

    .line 13
    .local v0, "updated":Z
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->updateConfiguredAccessory(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public updateConfiguredAccessory(I)Z
    .locals 2
    .param p1, "accessoryConfigured"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mCurrentAccessory:I

    if-eq v1, p1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mCurrentAccessory:I

    .line 32
    :cond_0
    return v0
.end method

.method public updateSupportedAccessory(I)Z
    .locals 2
    .param p1, "accessorySupported"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "updated":Z
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mSupportedAccessory:I

    if-eq v1, p1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->mSupportedAccessory:I

    .line 23
    :cond_0
    return v0
.end method
