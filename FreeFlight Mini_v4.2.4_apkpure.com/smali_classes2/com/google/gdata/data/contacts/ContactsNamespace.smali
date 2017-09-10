.class public Lcom/google/gdata/data/contacts/ContactsNamespace;
.super Ljava/lang/Object;
.source "ContactsNamespace.java"


# static fields
.field public static final GCONTACT:Ljava/lang/String; = "http://schemas.google.com/contact/2008"

.field public static final GCONTACT_ALIAS:Ljava/lang/String; = "gContact"

.field public static final GCONTACT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final GCONTACT_PREFIX:Ljava/lang/String; = "http://schemas.google.com/contact/2008#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "gContact"

    const-string v2, "http://schemas.google.com/contact/2008"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/ContactsNamespace;->GCONTACT_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
