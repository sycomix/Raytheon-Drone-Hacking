.class public Lcom/google/gdata/util/parser/Strcaselit;
.super Lcom/google/gdata/util/parser/Parser;
.source "Strcaselit.java"


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
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/gdata/util/parser/Strcaselit;->str:Ljava/lang/String;

    .line 42
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
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/gdata/util/parser/Strcaselit;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 56
    if-ge p2, p3, :cond_0

    aget-char v1, p1, p2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/google/gdata/util/parser/Strcaselit;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 59
    :cond_0
    const/4 v1, -0x1

    .line 63
    :goto_1
    return v1

    .line 61
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/util/parser/Strcaselit;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method
