.class public Lcom/google/gdata/data/Person$AtomHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;,
        Lcom/google/gdata/data/Person$AtomHandler$UriHandler;,
        Lcom/google/gdata/data/Person$AtomHandler$NameHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/Person;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/gdata/data/Person$AtomHandler;->this$0:Lcom/google/gdata/data/Person;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 217
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
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
    .line 226
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/google/gdata/data/Person$AtomHandler$NameHandler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/Person$AtomHandler$NameHandler;-><init>(Lcom/google/gdata/data/Person$AtomHandler;)V

    .line 237
    :goto_0
    return-object v0

    .line 229
    :cond_0
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Lcom/google/gdata/data/Person$AtomHandler$UriHandler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/Person$AtomHandler$UriHandler;-><init>(Lcom/google/gdata/data/Person$AtomHandler;)V

    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/Person$AtomHandler$EmailHandler;-><init>(Lcom/google/gdata/data/Person$AtomHandler;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
