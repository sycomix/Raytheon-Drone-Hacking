.class Lcom/google/gdata/util/common/base/CharEscaper$1;
.super Ljava/lang/Object;
.source "CharEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/CharEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/base/CharEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/CharEscaper;Ljava/lang/Appendable;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    iput-object p2, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private outputChars([C)V
    .locals 5
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 128
    .local v1, "c":C
    iget-object v4, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "c":C
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 118
    .local v0, "escaped":[C
    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 123
    :goto_0
    return-object p0

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/base/CharEscaper$1;->outputChars([C)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gdata/util/common/base/CharEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    move v2, p2

    .line 100
    .local v2, "unescapedChunkStart":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 102
    .local v0, "escaped":[C
    if-eqz v0, :cond_1

    .line 103
    if-ge v2, v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v3, p1, v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 106
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/base/CharEscaper$1;->outputChars([C)V

    .line 107
    add-int/lit8 v2, v1, 0x1

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "escaped":[C
    :cond_2
    if-ge v2, p3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v3, p1, v2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 113
    :cond_3
    return-object p0
.end method
