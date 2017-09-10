.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    .line 58
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 205
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 196
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 197
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 13
    .param p1, "x"    # J

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/LongAdder;->base:J

    .local v2, "b":J
    add-long v10, v2, p1

    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v10

    if-nez v10, :cond_2

    .line 68
    .end local v2    # "b":J
    :cond_0
    const/4 v7, 0x1

    .line 69
    .local v7, "uncontended":Z
    sget-object v10, Lcom/google/common/cache/LongAdder;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-virtual {v10}, Lcom/google/common/cache/Striped64$ThreadHashCode;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/Striped64$HashCode;

    .local v5, "hc":Lcom/google/common/cache/Striped64$HashCode;
    iget v4, v5, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 70
    .local v4, "h":I
    if-eqz v1, :cond_1

    array-length v6, v1

    .local v6, "n":I
    const/4 v10, 0x1

    if-lt v6, v10, :cond_1

    add-int/lit8 v10, v6, -0x1

    and-int/2addr v10, v4

    aget-object v0, v1, v10

    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_1

    iget-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v6    # "n":I
    .end local v8    # "v":J
    :cond_1
    invoke-virtual {p0, p1, p2, v5, v7}, Lcom/google/common/cache/LongAdder;->retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V

    .line 75
    .end local v4    # "h":I
    .end local v5    # "hc":Lcom/google/common/cache/Striped64$HashCode;
    .end local v7    # "uncontended":Z
    :cond_2
    return-void
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 89
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 3
    .param p1, "v"    # J
    .param p3, "x"    # J

    .prologue
    .line 52
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 82
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    .line 123
    return-void
.end method

.method public sum()J
    .locals 8

    .prologue
    .line 101
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 102
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 103
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v1, :cond_1

    .line 104
    array-length v3, v1

    .line 105
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 106
    aget-object v0, v1, v2

    .line 107
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 108
    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 105
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-wide v4
.end method

.method public sumThenReset()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 136
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 137
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 138
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide v8, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 139
    if-eqz v1, :cond_1

    .line 140
    array-length v3, v1

    .line 141
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 142
    aget-object v0, v1, v2

    .line 143
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 144
    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 145
    iput-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
