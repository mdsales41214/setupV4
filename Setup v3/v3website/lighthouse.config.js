module.exports = {
  ci: {
    collect: {
      url: ['https://yourcompany.nl'], // Replace with your actual production URL
      startServerCommand: 'php -S localhost:8000 -t public', // Or your local PHP server command
      numberOfRuns: 3,
      upload: {
        target: 'filesystem',
        outputDir: './lighthouse-results',
      },
    },
    assert: {
      assertions: {
        'categories:performance': ['error', { minScore: 0.9 }],
        'categories:accessibility': ['error', { minScore: 0.95 }],
        'categories:best-practices': ['error', { minScore: 0.9 }],
        'categories:seo': ['error', { minScore: 0.95 }],
        'categories:pwa': ['warn', { minScore: 0.8 }],
      },
    },
  },
};
