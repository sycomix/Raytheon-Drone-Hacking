.class public abstract Lcom/google/gdata/model/MetadataKey;
.super Ljava/lang/Object;
.source "MetadataKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/gdata/model/MetadataKey",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final datatype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TD;>;"
        }
    .end annotation
.end field

.field final id:Lcom/google/gdata/model/QName;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TD;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<TD;>;"
    .local p2, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "datatype"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    .line 45
    iput-object p2, p0, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    .line 46
    return-void
.end method

.method static compareClass(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, -0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {p0, p1}, Lcom/google/gdata/model/MetadataKey;->getFirstNonAssignable(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 131
    invoke-static {p1, p0}, Lcom/google/gdata/model/MetadataKey;->getFirstNonAssignable(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static compareQName(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/QName;)I
    .locals 1
    .param p0, "a"    # Lcom/google/gdata/model/QName;
    .param p1, "b"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 93
    if-ne p0, p1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 97
    :cond_0
    if-nez p0, :cond_1

    .line 98
    const/4 v0, -0x1

    goto :goto_0

    .line 101
    :cond_1
    if-nez p1, :cond_2

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/QName;->compareTo(Lcom/google/gdata/model/QName;)I

    move-result v0

    goto :goto_0
.end method

.method static getFirstNonAssignable(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "a":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "b":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "superA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    move-object p0, v0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getDatatype()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TD;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<TD;>;"
    iget-object v0, p0, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    return-object v0
.end method

.method public getId()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<TD;>;"
    iget-object v0, p0, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    return-object v0
.end method

.method matchIdAndDatatype(Lcom/google/gdata/model/MetadataKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<TD;>;"
    .local p1, "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/QName;->matches(Lcom/google/gdata/model/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract matches(Lcom/google/gdata/model/MetadataKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MetadataKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
