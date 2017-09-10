.class public Lcom/google/gdata/data/Category$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field adaptable:Lcom/google/gdata/data/Kind$Adaptable;

.field categorySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation
.end field

.field extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field final synthetic this$0:Lcom/google/gdata/data/Category;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Category;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/Category;Lcom/google/gdata/data/ExtensionProfile;Ljava/util/Set;Lcom/google/gdata/data/Kind$Adaptable;)V
    .locals 0
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p4, "adaptable"    # Lcom/google/gdata/data/Kind$Adaptable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;",
            "Lcom/google/gdata/data/Kind$Adaptable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p3, "categorySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/Category;>;"
    iput-object p1, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/google/gdata/data/Category$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 242
    iput-object p3, p0, Lcom/google/gdata/data/Category$AtomHandler;->categorySet:Ljava/util/Set;

    .line 243
    iput-object p4, p0, Lcom/google/gdata/data/Category$AtomHandler;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    .line 244
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "scheme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iput-object p3, v0, Lcom/google/gdata/data/Category;->scheme:Ljava/lang/String;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "term"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iput-object p3, v0, Lcom/google/gdata/data/Category;->term:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "label"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iput-object p3, v0, Lcom/google/gdata/data/Category;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iget-object v2, v2, Lcom/google/gdata/data/Category;->term:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 272
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->missingTermAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iget-object v3, p0, Lcom/google/gdata/data/Category$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/gdata/data/Category;->labelLang:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->categorySet:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->categorySet:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v2}, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    invoke-static {v2}, Lcom/google/gdata/data/Kind;->isKindCategory(Lcom/google/gdata/data/Category;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->this$0:Lcom/google/gdata/data/Category;

    iget-object v2, v2, Lcom/google/gdata/data/Category;->term:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/data/Category$AtomHandler;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-static {v2, v3}, Lcom/google/gdata/data/Kind;->getAdaptor(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    .line 295
    .local v0, "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    if-eqz v0, :cond_2

    .line 296
    iget-object v2, p0, Lcom/google/gdata/data/Category$AtomHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v2, v0}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V
    :try_end_0
    .catch Lcom/google/gdata/data/Kind$AdaptorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    :cond_2
    return-void

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "ae":Lcom/google/gdata/data/Kind$AdaptorException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->cantLoadKindAdaptor:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v2
.end method
