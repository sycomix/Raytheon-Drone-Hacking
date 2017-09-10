.class public Lcom/google/gdata/data/photos/pheed/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PHEED_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "photo"

    const-string v2, "http://www.pheed.com/pheed/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/pheed/Namespaces;->PHEED_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
