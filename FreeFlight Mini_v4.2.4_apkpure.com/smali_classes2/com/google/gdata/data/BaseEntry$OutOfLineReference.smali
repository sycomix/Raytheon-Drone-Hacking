.class Lcom/google/gdata/data/BaseEntry$OutOfLineReference;
.super Ljava/lang/Object;
.source "BaseEntry.java"

# interfaces
.implements Lcom/google/gdata/data/Reference;
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutOfLineReference"
.end annotation


# instance fields
.field private oolContent:Lcom/google/gdata/data/OutOfLineContent;

.field final synthetic this$0:Lcom/google/gdata/data/BaseEntry;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;)V
    .locals 0
    .param p2, "oolContent"    # Lcom/google/gdata/data/OutOfLineContent;

    .prologue
    .line 688
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->this$0:Lcom/google/gdata/data/BaseEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p2, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    .line 690
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;Lcom/google/gdata/data/BaseEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/BaseEntry;
    .param p2, "x1"    # Lcom/google/gdata/data/OutOfLineContent;
    .param p3, "x2"    # Lcom/google/gdata/data/BaseEntry$1;

    .prologue
    .line 678
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/OutOfLineContent;)V

    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 701
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 706
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v0}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 697
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$OutOfLineReference;, "Lcom/google/gdata/data/BaseEntry<TE;>.OutOfLineReference;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$OutOfLineReference;->oolContent:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/OutOfLineContent;->setUri(Ljava/lang/String;)V

    .line 698
    return-void
.end method
