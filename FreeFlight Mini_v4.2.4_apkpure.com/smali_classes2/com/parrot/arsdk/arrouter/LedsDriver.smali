.class public Lcom/parrot/arsdk/arrouter/LedsDriver;
.super Ljava/lang/Object;
.source "LedsDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/LedsDriver$LedsDriverHolder;
    }
.end annotation


# static fields
.field public static final NB_LEDS:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsDriver;->nativeInit()Z

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arrouter/LedsDriver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arrouter/LedsDriver$1;

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsDriver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/parrot/arsdk/arrouter/LedsDriver;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/parrot/arsdk/arrouter/LedsDriver$LedsDriverHolder;->access$100()Lcom/parrot/arsdk/arrouter/LedsDriver;

    move-result-object v0

    return-object v0
.end method

.method private native nativeClose()Z
.end method

.method private native nativeEnable([Z)Z
.end method

.method private native nativeInit()Z
.end method


# virtual methods
.method public disableLeds()Z
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 62
    new-array v1, v3, [Z

    .line 64
    .local v1, "values":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 66
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, v1}, Lcom/parrot/arsdk/arrouter/LedsDriver;->enableLeds([Z)Z

    move-result v2

    return v2
.end method

.method public enableLeds(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x10

    .line 50
    new-array v2, v4, [Z

    .line 52
    .local v2, "values":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 54
    rsub-int/lit8 v3, v0, 0x10

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 55
    .local v1, "test":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "test":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/parrot/arsdk/arrouter/LedsDriver;->enableLeds([Z)Z

    move-result v3

    return v3
.end method

.method public enableLeds([Z)Z
    .locals 2
    .param p1, "values"    # [Z

    .prologue
    .line 41
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/arrouter/LedsDriver;->nativeEnable([Z)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/LedsDriver;->nativeClose()Z

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 35
    return-void
.end method
