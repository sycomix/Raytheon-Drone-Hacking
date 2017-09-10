.class public final Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/XmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final nsAlias:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 182
    .local v0, "separator":I
    if-lez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 184
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 187
    .end local v0    # "separator":I
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->nsAlias:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->name:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->value:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 199
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 199
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
