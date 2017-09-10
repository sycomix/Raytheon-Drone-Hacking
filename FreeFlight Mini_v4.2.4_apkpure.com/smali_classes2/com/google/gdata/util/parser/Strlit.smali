.class public Lcom/google/gdata/util/parser/Strlit;
.super Lcom/google/gdata/util/parser/Parser;
.source "Strlit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/util/parser/Parser",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/gdata/util/parser/Strlit;->str:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/gdata/util/parser/Strlit;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 54
    if-ge p2, p3, :cond_0

    aget-char v1, p1, p2

    iget-object v2, p0, Lcom/google/gdata/util/parser/Strlit;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 56
    :cond_0
    const/4 v1, -0x1

    .line 60
    :goto_1
    return v1

    .line 58
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/util/parser/Strlit;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method
