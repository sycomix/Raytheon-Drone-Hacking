.class public Lcom/google/api/gbase/client/NumberUnit;
.super Ljava/lang/Object;
.source "NumberUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final unit:Ljava/lang/String;

.field private final value:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .param p2, "unit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    .line 30
    iput-object p2, p0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    const/4 v1, 0x0

    .line 59
    instance-of v2, p1, Lcom/google/api/gbase/client/NumberUnit;

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/google/api/gbase/client/NumberUnit;

    .line 64
    .local v0, "other":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<+Ljava/lang/Number;>;"
    iget-object v2, p0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    iget-object v3, v0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    iget-object v0, p0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    iget-object v0, p0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    iget-object v0, p0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2f

    iget-object v1, p0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/gbase/client/NumberUnit;->value:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/NumberUnit;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
