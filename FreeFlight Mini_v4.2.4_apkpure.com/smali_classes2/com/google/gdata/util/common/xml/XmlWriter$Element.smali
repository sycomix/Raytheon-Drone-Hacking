.class public Lcom/google/gdata/util/common/xml/XmlWriter$Element;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/xml/XmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Element"
.end annotation


# static fields
.field public static final NOT_REPEATING:I = -0x1


# instance fields
.field public enclosingDefaultNamespace:Ljava/lang/String;

.field public hasAttributes:Z

.field public final name:Ljava/lang/String;

.field public nsAlias:Ljava/lang/String;

.field public nsDecls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field public final nsUri:Ljava/lang/String;

.field public openTagEnded:Z

.field public repeatingCount:I

.field public repeatingIndex:I

.field public unformattedChildren:Z

.field public xmlLang:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    .line 268
    iput v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingIndex:I

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    .line 292
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsAlias:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsUri:Ljava/lang/String;

    .line 294
    iput-object p3, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->name:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public addNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 1
    .param p1, "ns"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    return-void
.end method
