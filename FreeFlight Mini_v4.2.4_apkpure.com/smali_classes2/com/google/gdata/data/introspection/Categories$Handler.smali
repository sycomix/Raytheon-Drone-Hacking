.class public Lcom/google/gdata/data/introspection/Categories$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/introspection/Categories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/Categories;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/Categories;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Categories$Handler;->this$0:Lcom/google/gdata/data/introspection/Categories;

    .line 227
    const-class v0, Lcom/google/gdata/data/introspection/Categories;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "category"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Lcom/google/gdata/data/Category;

    invoke-direct {v0}, Lcom/google/gdata/data/Category;-><init>()V

    .line 241
    .local v0, "category":Lcom/google/gdata/data/Category;
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Categories$Handler;->this$0:Lcom/google/gdata/data/introspection/Categories;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/introspection/Categories;->addCategory(Lcom/google/gdata/data/Category;)V

    .line 242
    new-instance v1, Lcom/google/gdata/data/Category$AtomHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/google/gdata/data/Category$AtomHandler;-><init>(Lcom/google/gdata/data/Category;)V

    .line 245
    .end local v0    # "category":Lcom/google/gdata/data/Category;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method
