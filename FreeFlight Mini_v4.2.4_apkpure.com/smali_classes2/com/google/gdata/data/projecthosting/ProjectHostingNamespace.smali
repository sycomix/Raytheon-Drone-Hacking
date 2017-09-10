.class public Lcom/google/gdata/data/projecthosting/ProjectHostingNamespace;
.super Ljava/lang/Object;
.source "ProjectHostingNamespace.java"


# static fields
.field public static final ISSUES:Ljava/lang/String; = "http://schemas.google.com/projecthosting/issues/2009"

.field public static final ISSUES_ALIAS:Ljava/lang/String; = "issues"

.field public static final ISSUES_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final ISSUES_PREFIX:Ljava/lang/String; = "http://schemas.google.com/projecthosting/issues/2009#"

.field public static final PROJECTS:Ljava/lang/String; = "http://schemas.google.com/projecthosting/projects/2010"

.field public static final PROJECTS_ALIAS:Ljava/lang/String; = "projects"

.field public static final PROJECTS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final PROJECTS_PREFIX:Ljava/lang/String; = "http://schemas.google.com/projecthosting/projects/2010#"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "issues"

    const-string v2, "http://schemas.google.com/projecthosting/issues/2009"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/ProjectHostingNamespace;->ISSUES_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 55
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "projects"

    const-string v2, "http://schemas.google.com/projecthosting/projects/2010"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/projecthosting/ProjectHostingNamespace;->PROJECTS_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
