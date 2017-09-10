.class public final Lcom/crittercism/internal/cl;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    .line 5
    sget-object v0, Lcom/crittercism/internal/ck;->a:Lcom/crittercism/internal/ck;

    invoke-virtual {v0}, Lcom/crittercism/internal/ck;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    .line 30
    iput p1, p0, Lcom/crittercism/internal/cl;->a:I

    .line 31
    iput p2, p0, Lcom/crittercism/internal/cl;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget v0, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    .line 5
    sget-object v0, Lcom/crittercism/internal/ck;->a:Lcom/crittercism/internal/ck;

    invoke-virtual {v0}, Lcom/crittercism/internal/ck;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/crittercism/internal/cm;->a(Ljava/lang/Throwable;)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    .line 37
    iget v0, p0, Lcom/crittercism/internal/cl;->a:I

    sget v1, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 38
    invoke-static {p1}, Lcom/crittercism/internal/ck;->a(Ljava/lang/Throwable;)Lcom/crittercism/internal/ck;

    move-result-object v0

    .line 1074
    iget v0, v0, Lcom/crittercism/internal/ck;->C:I

    .line 38
    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    goto :goto_0
.end method
